require 'pry'
class Backer
  attr_accessor :name
  attr_reader :backed_projects, :title

  #it creates a new instance of Backer with a given name, and an empty array of backed projects
  def initialize(name)
    # binding.pry
    @name = name
    @backed_projects = []
  end

  #accepts an instance of Project as an argument, adds the project to the backers
  #@backed_projects array and passes it to the projects #add_backer to also be
  #added to their list of backers if they weren't already backing it
  def back_project(project)
    if !(self.backed_projects.include?(project))
      self.backed_projects << project
      project.add_backer(self)
    end
  end
end
