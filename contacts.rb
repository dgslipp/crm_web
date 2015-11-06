class Contact
	attr_reader :id
	attr_accessor :first_name, :last_name, :email, :notes
	@@contacts = []
	@@id = 1
	def initialize(first_name, last_name, email, notes)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@notes = notes
		@id = @@id
		@id += 1
	end	
	def self.create(first_name, last_name, email, notes)
		new_contact = Contact.new(first_name, last_name, email, notes)
		@@contacts << new_contact
	end
	def self.all
		@@contacts
	end
	# def email
	# 	@email = "email"
	# end
	# def notes=(notes)
	# 	@notes = "notes"
	# end	
end
class CRM
	def initialize(name)
		@name = name
	end
	def print_main_menu
		puts "1. Add a contact"
		puts "2. Modify a contact"
		puts "3. Display all contacts"
		puts "4. Display contact"
		puts "5. Display contact attribute"
		puts "6. Delete a contact"
		puts "7. Exit"
	end	
	def main_menu
		while true
			print_main_menu
			print "Choose and option: "
			user_input = gets.chomp.to_i
			break if user_input ==7
			choose_option(user_input)
		end
	end
	def choose_option(input)
		case input
		when 1 then add_contact
		when 2 then modify_contact
		when 3 then display_all_contacts
		when 4 then display
		when 7 then	exit
		end
	end
	def add_contact
		print "first_name"
		first_name = gets.chomp

		print "last_name"
		last_name = gets.chomp

		print "email"
		email = gets.chomp

		print "notes"
		notes = gets.chomp

		Contact.create("first_name", "last_name", "email", "notes")
	end
end