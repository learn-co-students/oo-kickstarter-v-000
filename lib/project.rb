class Project
attr_accessor :title, :backers 
  def initialize(title)
    self.title = title
    self.backers = []
  end
  
  def add_backer(bakr)
    self.backers << bakr
    bakr.backed_projects << self
  end
end