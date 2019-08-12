
class Project
  attr_reader :title, :backers

  def initialize(title) #initialize with argument of title
    @title = title
    @backers = [] # create empty array
  end

  def add_backer(backer) # take in a new backer as an argument
    backers << backer # add backer to backers array
    backer.backed_projects << self
  end

end
