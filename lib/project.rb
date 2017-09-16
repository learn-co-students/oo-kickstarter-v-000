class Project

  attr_accessor :backers, :title, :backer

  def initialize(title)
    @title = title
    @backers = []
    @backer = backer
  end

  def backers
    @backers
  end

  def add_backer(name)
    backers << name
    name.projects << self
  end

end
