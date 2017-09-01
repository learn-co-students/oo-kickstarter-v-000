class Backer
  attr_reader :name, :backed_projects

  def initialize(backer_name)
    @name = backer_name
    @backed_projects = []
  end

  def back_project(project_object)
    @backed_projects << project_object
    project_object.backers << self
  end
end
