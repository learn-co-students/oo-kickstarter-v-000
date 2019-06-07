require 'pry'
require_relative 'project.rb'

class Backer
 attr_accessor :backed_projects, :name, :backers, :project
 
  def initialize(name)
    @name = name
    @backed_projects = []
  end
 
  def back_project(project)
    @backed_projects << project
    project.backers << self
  end

end