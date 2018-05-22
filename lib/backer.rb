require 'pry'
class Backer
  attr_reader :name
  attr_accessor :backed_projects, :backer

  def initialize (name)
    @name = name
    @backed_projects = Array.new
  end

  def project_exists?(project)
    return @backed_projects.include?(project)
  end

  def back_project(project)
    @backed_projects << project
    if !project.backer_exists?(self)
      project.add_backer(self)
    end
  end
end
