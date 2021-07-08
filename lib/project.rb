class Project
  attr_accessor :title, :backers #so that projects
   #can add backers to their list of backers and report 
  #on the backers who support them.


  def initialize(title)
    @title = title 
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
    #also adds the project to the backer's
    #backed_projects array
    #add self to backer.

  end

end