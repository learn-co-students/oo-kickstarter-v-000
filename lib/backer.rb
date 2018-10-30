require 'pry'
class Backer
  attr_accessor :name, :backed_projects
  # :backed_projects accessor method - accessor method
  # def backed_projects
  #   @backed_projects
  # end
  #
  # :name accessor method - accessor method
  # def name
  #   @name
  # end
  # - accesses the attributes in this class Backer

  def initialize(name)
    # when a new Backer is created it has a name and an array of backed_projects
    # as attributes
    @name = name
    @backed_projects = []

  end

  def back_project(project)
    #binding.pry
    # the project that is being passed in is beinh pushed into the @backed_projects array
    @backed_projects << project
    # this adds a backer object 
    project.backers << self
  end




end
