class Project
  attr_accessor :title, :backers
  @@new = []

  def initialize(title)
    @title = title
    @@new = self
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end

end
