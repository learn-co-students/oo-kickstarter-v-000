#create class Backer

class Backer

#initialize with name, create attr_accessor name
  attr_accessor :name, :backed_projects, :backers

#when initialize with name, also initialize new empty array
  def initialize(name)
    @name = name
    @backed_projects = []
  end

#each instance goes into new array
  def back_project(project)
    @backed_projects << project
    project.backers << self
  end

end
