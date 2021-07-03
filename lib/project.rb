class Project
  attr_accessor :title, :backers

  def initialize(name)
    @title = name
    @backers = []
  end

  def add_backer(name)
    self.backers << name
    name.backed_projects << self
  end
end
