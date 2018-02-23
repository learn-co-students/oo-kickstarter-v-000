class Project
  
  attr_accessor :backers 
  attr_reader :title, :backer  
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def backer=(backer)
    @backer = backer
    backer.back_project(self)
  end 
  
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self 
  end

end