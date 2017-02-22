class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def check_backer

  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self #uses the attr_accessor to manipulate the backed_projects array and push the backer instance onto it
  end

end
