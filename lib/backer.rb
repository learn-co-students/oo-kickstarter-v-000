class Backer
  attr_accessor :projects
  attr_reader :name

  def initialize(name)
    @name=name
    @projects = []
  end

  def back_project(project)
    self.projects<<project
    project.backers<<self unless project.backers.include?(self)
  end

end
