require 'pry'

class Project

  attr_accessor :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer) #data on backers
    #also adds the project to the backer's backed projects array
    @backers<<backer
    backer.backed_projects << self
  end


end
