class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(newproj)
    @backed_projects << newproj
    newproj.backers << self
  end
end
