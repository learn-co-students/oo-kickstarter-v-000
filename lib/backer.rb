class Backer
  attr_accessor :name, :backed_projects


  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    if project.nil?
      @backed_projects<<Project.new(project)
    else
      @backed_projects << project
    end
    project.backers << self
  end


end
