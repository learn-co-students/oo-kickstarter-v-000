require 'pry'

class Backer
  attr_accessor :name, :project


  def initialize(name)
    @name = name
    @backed_projects = []



  end
  def back_project(val)
    @backed_projects << val
    val.backers << self
    #binding.pry

  end
  def backed_projects
    @backed_projects
  end
end
