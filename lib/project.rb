class Project

  attr_accessor :backers, :title

  def initialize(title)
    @title = title                    #init with title
    @backers = []                     #init with empty array of backers
  end

  def add_backer(backer)
    self.backers << backer            #a_b takes backer input, adds to backer array
    backer.backed_projects << self    #project instance added to backer instance's project array via b_p method
  end

end
