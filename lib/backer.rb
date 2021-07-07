class Backer 

attr_accessor :backed_projects
attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def name 
    @name
  end  
  
  def back_project(project)
    @backed_projects << project
    project.backers << self  
  end  
  
  # # def back_project(backer)
  #   Project.backers << backer 
  # end 
end   