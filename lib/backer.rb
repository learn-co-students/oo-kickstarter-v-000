class Backer
  attr_writer :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def name
    @name
  end

  def backed_projects
    @backed_projects
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
end
