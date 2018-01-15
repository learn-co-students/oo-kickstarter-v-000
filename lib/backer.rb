class Backer
  attr_accessor :backed_projects, :name

  def initialize(backer_name)
    @name = backer_name
    @backed_projects = []
  end

  def back_project(project)
    self.backed_projects << project
    project.backers << self
  end

end
