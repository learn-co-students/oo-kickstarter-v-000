require 'pry'

# create class Backer 
class Backer 
  # create initialize method w/argument (name)
# create add_backer method w/argument (Backer)
  # create backed_projects array - not sure if it's a class or instance variable yet
  @@backed_projects = []
  attr_accessor :name
  def initialize(name)
    @name = name
  end 
  
  def back_project(project_name)
    @@backed_projects << project_name
  end 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end 