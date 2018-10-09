class Project

  attr_accessor :backers, :add_backer
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(name)
    @backers << name
    name.backed_projects << self
  end

end