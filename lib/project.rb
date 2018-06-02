require 'pry'
class Project 
  attr_accessor :title, :backers
  
  def initialize(title)
    @title = title 
    @backers = []
  end 
  
  def add_backer(backer)
    @backers << backer
    #newBacker = Backer.new(backer)
    #newBacker.back_project(self)
    #newBacker.backed_projects << self
    backer.backed_projects << self
    #binding.pry
  end 
end 