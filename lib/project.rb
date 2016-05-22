require 'pry'

class Project
  
  attr_accessor :title, :backers
  
  def initialize(title_of_project)
    @title = title_of_project
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
  
end