class Backer

  attr_accessor :backed_projects, :name

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def back_project(project)
    project.backers << self
    self.backed_projects << project
  end

end