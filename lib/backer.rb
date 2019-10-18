class Backer

  attr_accessor :backed_projects, :backers
  attr_reader :name

  @backers =[]

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end

end
