class Backer
  attr_accessor :name, :backed_projects
  def initialize(name)
    self.name = name
    self.backed_projects = []
  end

  def back_project(project)
    backed_projects = self.backed_projects
    backed_projects << project unless backed_projects.include?(project)
    project.backers << self
    backed_projects
  end
end
