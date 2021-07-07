require 'pry'

class Project
  attr_accessor :backers, :project

  def initialize(title)
    @title = title
    @backers = []
end
def title
  @title
end
def backer=(name)
  @backer = @name
end
def add_backer(backer)
  @backers << backer
  backer.backed_projects << self
end
end
