
class Backer

  attr_accessor :name, :backed_projects, :project

  @@all = []

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def self.all
      @@all
  end

  def self.find_backer(name)
    self.all.find {|item| item.name == name}
    name
  end

  def back_project(projects)
    	backed_projects << projects
      new_project = Project.find_project(projects)
      new_project.add_backer(self)
      new_project
  end
end
