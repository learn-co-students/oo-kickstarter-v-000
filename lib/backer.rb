require 'pry'

class Backer

attr_accessor :backed_projects, :backers
attr_reader :name

def initialize(name)
  @name = name
  @backed_projects = []
end

def back_project(project)
  @backed_projects << project
    self.backed_projects.each do |x|
      x.backers << self
    end

end

end
