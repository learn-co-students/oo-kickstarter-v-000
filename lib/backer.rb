class Backer
  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project_object)
    if !@backed_projects.include?(project_object)
      @backed_projects << project_object
    end

    if !project_object.backers.include?(self)
      project_object.add_backer(self)
    end
  end
end
