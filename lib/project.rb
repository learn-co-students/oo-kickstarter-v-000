class Project

  attr_accessor :title, :backer, :backed_projects

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end

  def backers
    @backers
  end

end
