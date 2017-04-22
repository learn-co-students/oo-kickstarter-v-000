class Backer

  #should have an attr_accessor for backed projects
  #so that projects can be added to a backer's list and so that the backer can report on the projects they back.
  attr_accessor :name, :project, :backed_projects


#takes a name on initialization (need attr_accessor)
  def initialize(name)
    @name = name
  #it should be initialized with a @backed_projects variable set to an empty array
    @backed_projects = []
  end

  def back_project(project)
    #accepts a Project as an argument and stores it in a backed_projects array(project needs attr_accessor)
    @backed_projects << project
    # More Advanced #back_project also adds the backer to the project's backers array
    project.backers << self
  end


end
