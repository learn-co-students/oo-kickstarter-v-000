class Backer

  attr_accessor :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project_instance)
    @backed_projects << project_instance
    project_instance.add_backer(self) unless project_instance.backers.include?(self)
  end

end


# unless backer_instance.backed_projects.include?(self)
