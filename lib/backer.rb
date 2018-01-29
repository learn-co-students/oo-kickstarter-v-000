class Backer
  attr_accessor :name, :backed_projects


  def initialize(name)
    self.name = name
    self.backed_projects = []
  end

  def back_project(project)
    self.backed_projects.push(project) unless self.backed_projects.include?(project)
    project.add_backer(self) unless project.backers.include?(self)
  end
end
