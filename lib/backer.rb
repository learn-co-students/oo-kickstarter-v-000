class Backer
  attr_accessor :backed_projects
  attr_reader :name

  @@all = []

  def initialize(name)
    @backed_projects = []
    @name = name
    @@all << self
  end


  def back_project(project)
    @backed_projects << project
    project.backers << self unless project.backers == self
  end

end
