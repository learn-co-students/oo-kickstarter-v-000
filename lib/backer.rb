class Backer

  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project) # here project reps already Project class object instance
    backed_projects << project #=> arg project = Project.new("Some_Title")
    project.backers << self # This creates an infinite loop as an obj within itself?
  end

end