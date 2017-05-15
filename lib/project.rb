require 'pry'

class Project
  attr_accessor :title, :backers

  def initialize(name)
    @title = name
    @backers =[]
  end

  def add_backer(backer_obj)
    backers << backer_obj
    backer_obj.backed_projects << self
  end
end
