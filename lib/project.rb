class Project
  attr_accessor :backers, :title

  def initialize(name)
    self.backers = []
    self.title = name
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end
end
