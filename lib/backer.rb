class Backer
  attr_accessor :name, :backed_projects
  def initialize(backer_name)
    self.name = backer_name
    self.backed_projects = []
  end
  def back_project(project)
    project.add_backer(self)
  end
end