class Backer

  attr_accessor :name, :project, :backers

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

  def backed_projects
    @backed_projects
  end

end
