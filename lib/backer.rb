class Backer

  def initialize(name)
    @name = name
    @backed_projects = []
  end
  attr_accessor :backed_projects, :name

  def back_project(project)
    backed_projects << project
    project.backers << self
  end


end
