require 'pry'

class Project
  attr_accessor :title, :backer 
  attr_reader :backers
  
  def initialize(title)
    @title = title
    @backers = []
    #binding.pry
  end 
  
  def add_backer(backer)
    @backers << backer 
    backer.backed_projects << self 
  end 
  
  def backers
    @backers 
  end 
  
  
end 