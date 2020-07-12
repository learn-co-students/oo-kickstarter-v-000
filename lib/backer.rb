class Backer
  # a Backer will have many projects
  
  attr_accessor :name
  attr_reader :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project
    project.backers << self
    # add the instance directly to the variable to avoid
    # entering into a loop
  end

end