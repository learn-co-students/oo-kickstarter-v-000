class Project
  attr_accessor :backers, :title
  @@projects = []

  def initialize(name)
    @title = name
    @backers = []
    @@projects << self
  end

  def self.projects
    @@projects
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
end
