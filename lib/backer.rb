class Backer

attr_accessor :backed_projects, :name

  def initialize(name)
      @name = name
      @backed_projects = []
  end

  def back_project(project)
    unless @backed_projects.include?(project)
      @backed_projects << project
      project.add_backer(self)
    end
  end

end
