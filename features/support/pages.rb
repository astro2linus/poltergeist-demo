def login_page
	@login_page ||= LoginPage.new
end

def invoice_page
	@invoice_page ||= InvoicePage.new
end