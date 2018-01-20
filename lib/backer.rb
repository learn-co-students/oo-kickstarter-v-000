class Backer

  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    puts "Type error" if !project.is_a?(Project)
    self.backed_projects << project
    project.backers << self unless project.backers.include?(self)
  end





end
