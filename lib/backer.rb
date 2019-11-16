class Backer
  attr_accessor :name, :backed_projects
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
end

#send the project's name to the Project class

backer = Backer.new("Avi")
spencer = Backer.new("Spencer")
magic = Project.new("Magic The Gathering Thing")
puts spencer.back_project(magic)
