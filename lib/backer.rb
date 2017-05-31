require 'pry'
class Backer
  attr_accessor :name, :backed_projects, :add_backer
  def initialize(name)
    @name = name
    # Initialize with a @backed_projects variable set to an empty array
    @backed_projects = []
  end

  def back_project(project)
    # When a backer has added a project to its list of backed projects,
    @backed_projects << project

    #also adds the backer to the project's backers array
    project.backers << self
  end
end
