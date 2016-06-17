require 'pry'

class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(new_backer)
    new_backer.backed_projects << self
    @backers << new_backer

  end

end
