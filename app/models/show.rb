class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors.collect {|actor| actor.full_name}
    list = []
    self.actors.each do |x|
        list << x.full_name
    end 
    list
  end 
end