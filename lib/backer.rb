class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
    #the above line. every time a backer adds a project to its backed_projects,
    #it should also add itself(the backer) to that project's list of bakers (an array set upon initialization of a new project)
  end

end
