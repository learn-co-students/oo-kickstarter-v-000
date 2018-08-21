class Backer 
  attr_accessor :backed_projects, :name
  
  def initialize(a_name)
    @name =  a_name 
    @backed_projects = []
  end
  
  def back_project(some_project)
    if some_project.title
      some_project.add_backer(self)
      @backed_projects << some_project
    else
      new_project = Project.new(some_project)
      new_project.add_backer(self)
      @backed_projects << new_project
    end
  end 
      
      
  
end 