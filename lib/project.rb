class Project
  attr_accessor :title, :backers

  def initialize(name)
    @title = name
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end


end
