require 'pry'
class Project
  attr_accessor :backers
  attr_reader :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    #binding.pry
    @backers << backer
    backer.backed_projects << self
    #self.backers << backer
    #@backers
  end
end