class Backer
  attr_accessor :name
  attr_reader :backed_projects
  @backed_projects = []

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    if @backed_projects.include?(project)
      return @backed_projects
    end
    @backed_projects.push(project)
    project.add_backer(self)
  end
end
