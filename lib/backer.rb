class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    project.class == Project ? new_project = project : new_project = Project.new(project)
    @backed_projects << new_project
    new_project.backers << self
  end

end
