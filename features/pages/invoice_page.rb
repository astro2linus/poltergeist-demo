class InvoicePage
	attr_reader :all, :draft, :awaiting_approval, :awaiting_payment, :paid
	attr_reader :reference

	def initialize
		@all = All.new
		@draft = Draft.new
		@awaiting_approval = AwaitingApproval.new
		@awaiting_payment = AwaitingPayment.new
		@paid = Paid.new
		@repeating = Repeating.new
	end

	def save
		within 'div.buttons.footer' do
			click_on "Save"
		end
		sleep 5
	end

	def save_on_popup_window
		within 'div#EmailSettings' do
			sleep 3
			click_on "Save"
			sleep 3
		end
	end

	def new_repeating_invoice
		# required fields
		fill_in "StartDate", with: (Time.now + 3600*24).strftime("%d %b %Y")
		fill_in "DueDateDay", with: "7"
		choose "saveAsDraft"
		within('div.invoicing-details') do
			first('input').set "astro2linus 02"
			sleep 1
			@reference = "Ref-#{Time.now.to_i}"
			page.all('input')[1].set @reference
		end
		# choose the popup options
		find('div.search-item.x-combo-selected').click

		within page.all("div#invoice > div#lineItems table")[1] do
			within first('tr') do
				page.all('td')[1].click
				sleep 1	
			end
		end
		fill_in ('ext-comp-1001'), with: "kb001"
		find('div.x-combo-list-item.x-combo-selected').click

		click_on "Save"
		sleep 3
	end

	class All
	end

	class Draft
	end

	class AwaitingApproval
	end

	class AwaitingPayment
	end

	class Paid
	end

	class Repeating
	end

end