class Project
  attr_accessor :backers, :title

  def initialize(name, backers = [])
    @title = name
    @backers = backers
  end

  def backers
    @backers
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end
end
