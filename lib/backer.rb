class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    #because "project" is really equivalent to an instance of Project, or Project.new("name_of_project"), you can call the .backers method on it, which in this case, returns an array. then, self (aka this instance of backer) is shoveled into the backers array. 
    project.backers << self
  end
end