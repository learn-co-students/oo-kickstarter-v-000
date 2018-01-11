class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def find_project(project_title)
    @backed_projects.find do |project|
      project.title == project_title
    end
  end

  def back_project(project)
    if !find_project(project.title)
      @backed_projects << project
      project.add_backer(self)
    end
  end

end
