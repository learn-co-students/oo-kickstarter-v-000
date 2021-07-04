class Project
  attr_accessor :title, :backers
  attr_reader :backer, :backed_projects

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end
end
