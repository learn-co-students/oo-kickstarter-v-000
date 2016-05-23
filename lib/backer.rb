class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project_title)
    @backed_projects << project_title
    project_title.backer = self
    project_title.add_backer(self)
  end

end
