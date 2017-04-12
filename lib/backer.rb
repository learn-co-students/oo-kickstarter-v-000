class Backer
  attr_accessor :backed_projects, :name

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def back_project(backed_projects)
    @backed_projects << backed_projects
    backed_projects.backers << self
  end

end
