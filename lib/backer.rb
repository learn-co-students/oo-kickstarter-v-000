class Backer

  attr_accessor :name, :backed_projects#, :project


  def initialize(name)
    @name = name
    # @project = project
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self

  end

end
