class Project
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
    # binding.pry
  end

  def backers
    @backers
  end

  def add_backer(backer)
    backers << backer
    backer.backed_projects << self
    # binding.pry
  end
end
