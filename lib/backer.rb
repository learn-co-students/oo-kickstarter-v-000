class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    self.backed_projects = []
  end

  def back_project(project)
    backed_projects << project
    pers = self
    project.backers << pers
  end

end