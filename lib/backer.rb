class Backer

  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def back_project(project)
    @backed_projects << project
    project.add_backer(self) if !project.backers.include?(self)
  end

end
