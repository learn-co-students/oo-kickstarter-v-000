require 'pry'

# create class Backer 
class Backer 
  # create initialize method w/argument (name)
# create add_backer method w/argument (Backer)
  # create backed_projects array - not sure if it's a class or instance variable yet
  attr_accessor :name, :backed_projects
  
  def initialize(name)
    @name = name 
    @backed_projects = []
  end 
  
  def back_project(project_name)
    @backed_projects << project_name
  end 
  
  
  
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
end 