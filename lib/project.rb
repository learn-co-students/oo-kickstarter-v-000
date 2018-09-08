#require "pry"
class Project 
  attr_reader :title, :backers 
  # Personally, I don't think that :backers belongs in attr_accessor, as it is an array.
  # It doesn't make sense to me to have @backers include a writer method through attr_accessor.
  
  def initialize(title)
    @title = title 
    @backers = []
  end 
  
  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
    #binding.pry
  end
  
end