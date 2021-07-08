require'pry'
class Backer

  attr_accessor :backed_projects
  attr_accessor :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    backer = backed_projects.push(project)
    backer[0].backers << self
  end





end