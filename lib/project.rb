class Project

  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer unless !backer.is_a? Backer
    backer.backed_projects << self
  end
end
