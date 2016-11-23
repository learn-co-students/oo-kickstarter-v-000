class Backer
  attr_reader :name
  attr_accessor :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(new_project)
    self.backed_projects << new_project
    new_project.backers << self
  end
end
