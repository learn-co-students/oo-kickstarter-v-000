class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    # store the project argument in a backed_projects array
    @backed_projects << project
    # also add the backer to the project's backers array
    project.backers << self
  end
end
