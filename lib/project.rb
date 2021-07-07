class Project 
  attr_reader :title, :backers
  
  def initialize(title)
    @title = title 
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    @backers.detect {|b| b.backed_projects << self if b.name == backer.name}
  end
end