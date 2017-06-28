class Project
  attr_accessor :name, :backers

  def initialize(name)
    @name = name
    @backers = []
  end

  def title
    self.name
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end
end
