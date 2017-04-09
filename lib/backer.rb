class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def back_project(project)
    @backed_projects << project
    project.add_backer(self) #adds backer to the project's backers array
  end

end
