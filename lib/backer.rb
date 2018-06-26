class Backer
  attr_accessor :name, :project, :backed_projects
  def initialize(name)
    @name=  name
    @backed_projects= []
  end
  def back_project(project)
    @backed_projects << project
  #  project.add_backer(self)   # this create a loop with other class dont use it.
    project.backers << self
  end
end
