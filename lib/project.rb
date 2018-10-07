class Project
  
  attr_accessor :title, :backers, :backed_projects
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(name)
    @backers << name
  end
  
  def More_Advanced_add_backer
    
  end
  
end