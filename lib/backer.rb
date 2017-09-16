class Backer

  attr_accessor :backed_projects, :name, :projects

  def initialize(name)
    @name = name
    @backed_projects = []
    @projects = projects
  end

  def projects
    @backed_projects
  end

  def back_project(title)
    projects << title
    title.backers << self
  end

end
