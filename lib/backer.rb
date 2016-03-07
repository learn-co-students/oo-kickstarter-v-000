class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  #///CLASS METHODS ///#

  #///INSTANCE METHODS ///#
  def back_project(project)
    @backed_projects << project
    project.add_backer(self) if project.backers.all?{|backer| backer != self}

  end
end