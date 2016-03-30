require 'pry'

class Project
  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    self.backers = []
    @title = title
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end

end