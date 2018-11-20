class Project
   attr_accessor :title, :backers, :backed_projects
  
  def initialize(title)
  @backers = []
  @backed_projects = []
  @title = title
  end

  def add_backer(backer)
  backers << backer
  backer.backed_projects << self
  end
 end