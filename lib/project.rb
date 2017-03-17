require 'pry'

class Project

attr_reader :title, :backers

  def initialize(name)
    @title = name
    @backers = [] 
  end

  def add_backer(backer_name)
    @backers << backer_name
    backer_name.backed_projects << self
  end

end


