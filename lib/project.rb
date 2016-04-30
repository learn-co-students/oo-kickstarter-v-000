class Project
  attr_accessor :backers
  attr_reader :title #, :name

  def initialize(title)
    @title = title
    @backers = []
  end

  def backers
    @backers
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end

end