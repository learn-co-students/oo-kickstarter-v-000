require 'pry'
class Backer

  attr_accessor :name, :projects

  def initialize(name)
    @backed_projects = []
    @name = name
  end


  def back_project(project)
    @backed_projects << project
    project.backers << self 
  end

  def backed_projects
    @backed_projects
  end





end
