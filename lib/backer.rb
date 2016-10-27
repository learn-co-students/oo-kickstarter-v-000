class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    # should add the project to the backers's instance project array
    @backed_projects << project
    # should set the project.backer to the instance of backer

    # should add the backer to the project's backers array
    project.add_backer(self)
  end


end
