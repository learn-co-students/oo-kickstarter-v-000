class Backer

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  attr_reader :name, :backed_projects

  def back_project(project_object)
    @backed_projects << project_object
    project_object.backers << self
  end

end
