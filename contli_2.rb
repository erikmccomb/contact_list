@contacts = []

def menu
  puts 'Contact List'
  puts '1) View contacts'
  puts '2) Create contact'
  puts '3) Delete contact'
  puts '4) Edit contact'
  puts '5) Exit'
  choice = gets.to_i

  case choice
    when 1
      all_contacts
    when 2
      create_contact
    when 3
      delete_contact
    when 4
      edit_contact
    when 5
      exit
    else
      puts 'Please select a valid choice.'
  end
  menu
end

def all_contacts
  puts @contacts
end

def create_contact
  puts 'enter contact name'
  name = gets.strip
    if @contacts.include? name
      puts 'Name already on contact sheet'
    else
    @contacts << name
    end
end

def delete_contact
  puts 'Type the name to remove'
  del = gets.strip
    if @contacts.include? del
      @contacts.delete del
      puts 'Contact removed'
    else
      puts 'Contact not present'
    end
end

def edit_contact
  puts 'Type the name to edit'
  ed = gets.strip
    if @contacts.include? ed
      puts 'enter the changed contact'
      newname = gets.strip
      @contacts.map! { |name|
      (name == ed) ? newname : name
      }
    else
      puts 'name not present on list'
    end
end

menu