class Backer
  attr_accessor :backed_projects, :name

  def initialize(name)
    self.backed_projects = []
    self.name = name
  end

  def back_project(project)
    self.backed_projects << project
    project.backers << self
  end
end
