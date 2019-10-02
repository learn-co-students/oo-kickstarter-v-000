class Backer
  attr_accessor :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project #accepts a project as an argument and stores it in a backed_projects array
    project.backers << self #adds the backer to the project's backers array
  end
end
