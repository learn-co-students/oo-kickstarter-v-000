class Project
  attr_accessor :title, :backer, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    self.backer = backer
    backer.backed_projects << self
  end
end
