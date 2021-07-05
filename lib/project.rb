class Project

  attr_accessor :title, :backers
  @@project_backers = []

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    @@project_backers << backer
    # binding.pry
    backer.backed_projects << self
  end


end
