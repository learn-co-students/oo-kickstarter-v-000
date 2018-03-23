class Project

  attr_accessor :backer, :title, :backers

  @@add = []

  def initialize(title)
    @title = title
    @backers = []
    @@add << self
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end

end
