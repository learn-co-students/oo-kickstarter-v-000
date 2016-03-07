class Project
  attr_accessor :title, :backers, :backer

  def initialize(title)
    @title = title
    self.backers = []
  end

  def add_backer(backer)
    backers << backer
    proj = self
    backer.backed_projects << proj
  end

end