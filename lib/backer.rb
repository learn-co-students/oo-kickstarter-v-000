class Backer
  attr_accessor :name
  attr_reader :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.add_backer(self) #=> self refers to the instance of Backer
  end

end
