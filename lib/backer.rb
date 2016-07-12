class Backer
  attr_accessor :backed_projects
  attr_reader :name

  def initialize(backer_name)
    @name = backer_name
    @backed_projects = []
  end

  def back_project(project)
      self.backed_projects << project
      project.add_backer(self)
  end

end
