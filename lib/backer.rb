require 'pry'
class Backer
  def initialize(name)
    @name = name
    @backed_projects = []
  end

  attr_accessor :name, :backed_projects

  def back_project(project)
    self.backed_projects << project
    project.add_backer(self) unless project.backers.include? self
  end

  def self.add_backer_to_project
  end
end
