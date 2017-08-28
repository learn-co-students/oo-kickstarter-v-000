class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)

    @backed_projects << project
    #project an instance of the project class itself
    #project.add_backer(self)
    project.backers << self

  end


end
