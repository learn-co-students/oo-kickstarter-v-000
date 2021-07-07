class Backer
  attr_accessor :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project #tells backer class about the project
    project.backers << self #tell project class about the backer just gained
  end

end
