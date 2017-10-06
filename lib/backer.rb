class Backer
  attr_accessor :name, :backed_projects, :title

  def initialize(name)
    @name = name
  end

  def backed_project(project)
    @backed_projects = []
    Project.backers << project
  end
end
