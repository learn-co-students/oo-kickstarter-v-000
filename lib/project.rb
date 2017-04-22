class Project

  #should have an attr_accessor for backers
  # so that projects can add backers to their list of backers and report on the backers who support them.
  attr_accessor :title, :backers, :backer

#takes a title on initialization(needs attr_accessor)
  def initialize(title)
    @title = title
    #it should be initialized with a @backers variable set to an empty array.
    @backers = []
  end


#accepts a Backer as an argument and stores it in a backers array(backer needs attr_accessor)
  def add_backer(backer)
    @backers << backer
  #also adds the project to the backer's backed_projects array
    backer.backed_projects << self
  end

end
