class Project
  attr_accessor :backers, :title
  
  def initialize(title)
    @title = title
    @backers = [] 
  end
  
  def add_backer(backer)
    self.backers << backer
    if backer.backed_projects.none? { |p| p == self }
      backer.back_project(self)
    end
  end

end