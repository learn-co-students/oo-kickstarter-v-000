class Project
  attr_accessor :backers, :title
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    backer.back_project(self) if !backer.projects.include?(self)
  end

end