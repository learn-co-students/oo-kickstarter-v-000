class Backer
  attr_accessor :backed_projects
  attr_reader :name

  @@backed_projects=[]

  def initialize(name)
    @name=name
  end

  def backed_projects
    @@backed_projects
  end

  def back_project(project)
    @@backed_projects<<project
    project.backers<<self
  end

end
