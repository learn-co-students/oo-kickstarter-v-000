require 'pry'
class Backer

  attr_accessor :backed_projects, :name

  def initialize(name)
    @backed_projects = []
    @name = name
  end  

  def back_project(name)
    backed_projects << name
    name.backers << self
    binding.pry
  end

end