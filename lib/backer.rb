class Backer
  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    self.backed_projects = []
  end

  def back_project(project)
    unless self.backed_projects.include?(project)
      self.backed_projects << project
      project.add_backer(self)
    end
  end

end
