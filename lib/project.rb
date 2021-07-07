class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = [] # array of backers
  end

  def add_backer(backer) #accepts a backer as an arguement
    @backers << backer  # stores in a backers array
    backer.backed_projects << self
  end
end
