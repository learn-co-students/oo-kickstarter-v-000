class Backer
  attr_accessor :name, :backed_projects
#I initially had @backed_projects set in initialize and not attr_accessor. and def backed_projects didn't work. Why?
  def initialize(name)
    @name = name
    @backed_projects = []

  end

  def back_project(title)
    @backed_projects << title
    title.backers << self
  end

end
