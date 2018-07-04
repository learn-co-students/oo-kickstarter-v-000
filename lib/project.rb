require_relative 'backer.rb'

class Project
  attr_accessor :backers, :title, :backed_projects, :name
  
  def initialize(title)
    @title = title
    @backers = []
    @project = self
  end
  
  def add_backer(backer)
   @backers << backer
   backer.backed_projects << self
  end
  
end