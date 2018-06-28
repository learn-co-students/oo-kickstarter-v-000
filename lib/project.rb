class Project
  attr_accessor :backers, :title

  def initialize(title)
    self.title = title
    self.backers = []
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end

end
