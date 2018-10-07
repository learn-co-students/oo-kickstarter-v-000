require 'pry'
class Backer
  
  attr_accessor :name, :backed_projects, :backers
  
  def initialize(name)
    @name = name
    @backed_projects = []
  
  end
  
  def back_project(project)
    @backed_projects << project
  end
  
  def More_Advanced_back_project
    binding.pry
    @backed_projects << @backers
    
  end
  
   
    
  
  
end