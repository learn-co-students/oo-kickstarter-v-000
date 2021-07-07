class Backer
  attr_reader :name
  def initialize(name)
    @backed_projects = []
    @name= name
  end
  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
  def backed_projects
    @backed_projects
  end

end
