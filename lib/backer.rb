class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = Array.new
  end

  def back_project(project)
    if !@backed_projects.include?(project)
      @backed_projects << project
      project.add_backer(self)
      #endif
    end
  end

end
