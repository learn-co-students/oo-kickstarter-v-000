class Project
  attr_accessor :title
  attr_reader :backers

  @@all

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(name)

    @backers << name
    name.backed_projects << self
  end


end
