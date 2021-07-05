require 'pry'
class Backer
  attr_accessor :backed_projects, :name
  @@all = []

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self unless project.backers.include?(self)
    #binding.pry
    #Project.add_backer << new_backer
    #self.backed_projects = Project.find_or_create(project)
    #self.find_by_project
  end


#  def self.find_or_create(name)
#    if @@all.any?{|n| n.name = name}
#    else
#      new_name = self.new(name)
#      @@all << new_name
#    end
#  end

#  def self.all
#    @@all
#  end

#  def save
#    @@all << self
#  end

end
