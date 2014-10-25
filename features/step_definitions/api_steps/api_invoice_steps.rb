Given(/^the invoices for test exist in the system$/) do
end

When(/^I 'get' the invoice "(.*?)" = "(.*?)"$/) do |arg, val|
  invoices = $client.Invoice.all(:where => {arg.downcase.to_sym => val})
  @invoice = invoices.first
end

Then(/^"(.*?)" of the invoice should equal "(.*?)"$/) do |arg, val|
  @invoice[arg.downcase].to_s.should eq val
end