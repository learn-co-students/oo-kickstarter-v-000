class Project
  def initialize(title)
    @title = title
    @backers = []
  end
  
  attr_accessor :title, :backers
  
  def add_backer(backer)
    @backers << backer
    backer.back_project(self) if !backer.backed_projects.include?(self)
  end
  
end