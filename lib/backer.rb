class Backer
  attr_accessor :name, :backed_projects #so that projects can be added to a backer's list and so that the backer can report on the projects they back

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def project=(project)
    @project = project
  end

  def back_project(project)
    @backed_projects << project
    project.add_backer(self) unless project.backers.include?(self)
  end
end
