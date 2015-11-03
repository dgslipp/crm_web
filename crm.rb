require 'sinatra'

get '/' do 
	@time = Time.now.ctime ## @ reqd to print out 	
	@crm_app_name = "My CRM"
	erb :index
end