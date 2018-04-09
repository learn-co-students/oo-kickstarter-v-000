
class Backer
  attr_accessor :name
  attr_reader :backed_projects, :backers

  def initialize(name)
    @name = name
  end

  def back_project(project)
    @backed_projects = []
    @backed_projects << project
    
  end

  def backed_project
    project.backers << name
  end

end
