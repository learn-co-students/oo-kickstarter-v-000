class Backer
  attr_accessor :name, :backed_projects
  @@new = []

  def initialize(name)
    @name = name
    @@new << self
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
end
