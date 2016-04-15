require 'pry'
class Backer
  attr_accessor :name, :backed_projects
  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(proj)
    tmp_instance = self
    @backed_projects << proj
    proj.backers << tmp_instance
  end
end