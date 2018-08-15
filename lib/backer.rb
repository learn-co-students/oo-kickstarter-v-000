class Backer

  attr_accessor :name, :backed_projects

  def initialize(name) # Takes a name on initialization
    @name = name
    @backed_projects = []
  end

  def back_project(project) # Accepts a Project as an argument
    @backed_projects << project # Stores the project in the backed_projects array
    project.backers << self # Adds the Backer to the project's backers array
  end

end
