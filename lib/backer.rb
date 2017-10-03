class Backer
  attr_accessor :backed_projects

  def initialize(name, backed_projects )
    @name = name
    @backed_projects = []
  end



  def back_project(project)# shuld this be title?
    @backed_projects << project
  end


  def backed_projects
  end

backer
backed_projects << new project
also add the backer to the project's list of backers
