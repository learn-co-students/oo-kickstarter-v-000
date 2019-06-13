class Backer
  attr_accessor :backed_projects, :name
  @@backers = []

  def initialize(name)
    @name = name
    @@backers << self
    @backed_projects = []
  end

  def self.backers
    @@backers
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end

end
