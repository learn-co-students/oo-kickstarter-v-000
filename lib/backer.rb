#require_relative "project.rb"

class Backer
  attr_accessor :name, :projects
  def initialize(name="")
    @projects = []
    @name = name
  end
  def back_project(project)
    #puts @projects
    #puts project
    if(!@projects.include?(project))
    #  puts "not included"
      @projects << project
      project.add_backer(self)
    end
    #puts @projects
  end
  def backed_projects
    @projects
  end
end


#tim = Backer.new("Tim")
#a_proj = Project.new("BoomBox")
#a_proj.add_backer(tim)
