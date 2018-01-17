class Backer
  attr_accessor :backer, :name, :backed_projects

  def initialize(name)
    @name = name
    @backer = backer
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end



end
