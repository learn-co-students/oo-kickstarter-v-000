require 'pry'
  class Backer
  attr_accessor :name, :backed_projects #so that 
  # projects can be added to a backer's list 
  # and so that the backer can report on the 
  # projects they back.

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project) 
    @backed_projects << project
    #self is the backer instance
    
    project.add_backer(self)

#also want to add the backer/self to the project's 
#backers array
    # call method add_backer(backer/self) on the project
    # instance 


  end
end