class Backer
    attr_accessor :name, :backed_projects
    #outside of instance methods are in the class scope, meaning when the class is defined, it will run this code.

  def initialize(name)
    # default state for an instance
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end



end
