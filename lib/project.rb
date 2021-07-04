class Project

  attr_accessor :title, :backers

  def initialize(title, backers = [])
    self.title = title
    self.backers = backers
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end


end