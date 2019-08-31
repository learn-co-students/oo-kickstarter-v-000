class Project
  attr_reader :title, :backers

  def initialize(title)
    self.title = title
    self.backers = []
  end

  def add_backer(backer)
    backers << backer
    backer.backed_projects << self
  end

  private

  def title=(title)
    @title = title
  end

  def backers=(backers)
    @backers = backers
  end
end
