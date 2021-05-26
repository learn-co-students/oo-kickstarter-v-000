class Backer

  attr_accessor :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  # instance methods

  def back_project(project)
    self.backed_projects << project
    project.add_backer(self) unless project.backers.include?(self)
  end


end
