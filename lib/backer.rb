require 'pry'
class Backer
attr_accessor :backed_projects
attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    if !@backed_projects.find{|p| p == project}
      @backed_projects << project
      project.add_backer(self)
    end
  end
end
