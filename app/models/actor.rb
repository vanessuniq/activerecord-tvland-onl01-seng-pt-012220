class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    puts("#{self.first_name} #{self.last_name}")
  end 

  def list_roles
    self.characters.map {|character| "#{character.name} - #{character.show.name}"}
    roles = []
    self.characters.each do |x|
        roles << "#{x.name}"+" - "+"#{x.show.name}"
    end 
    roles
  end  
end