class Contact
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :email
  
  @@count = 0
  @@instances = []

  def self.doSomething
  	
  end

  def check_duplicate(email)
    @@instances.each do |contact|
      if (email == contact.email)
        return false
      end
    end  

    true
  end

  def initialize(first_name, last_name, email)
    # TODO: assign local variables to instance variables
    if ( check_duplicate(email) ) 
	    @first_name = first_name
	    @last_name = last_name
	    @email = email
	    @id = @@count
	    @@count += 1
	    @@instances << self
		end	
  end



  def to_s
    puts "id: #{@id} #{@first_name} #{@last_name} (#{@email})\n"
  end

  def self.show_id(id)
  	if id < @@count
  		puts instances[id]
  	end
  end

  def self.all
  	@@instances.inspect
  end

  def self.count
  	@@count
  end

  def self.instances
  	@@instances
  end
  
end

c0 = Contact.new("Tom", "Sav", "tomsav2010@gmail.com")
c1 = Contact.new("Lauren","Hearnden","Lauren@gmail.com")
c2 = Contact.new("Moo","Cow","Moo@Cow.com")
c3 = Contact.new("Woof","Dog","Woof@Dog.com")
c4 = Contact.new("Meow","Cat","Meow@Cat.com")

