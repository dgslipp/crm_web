require_relative 'contacts'
require 'sinatra'

get '/' do 
	@time = Time.now.ctime ## @ reqd to print out 	
	@crm_app_name = "My CRM"
	erb :index
end

get "/contacts" do
	Contact.create("Dave", "Slipp", "david.slipp@rogers.com", "He likes to ski")
	Contact.create("Jen", "Smith", "jen.smith@rogers.com", "She likes to sail")
	Contact.create("Barb   ", "Jones   ", "b.jones@gmail.com   ", "Barb likes to read   ")
	erb :contacts
end

get "/contacts/new" do
	erb :new_contact
end


