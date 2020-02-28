class Project
  attr_accessor :title

  def initialize(title)
    @title=title
    @backers=[]
  end

  def add_backer(bkr)
    @backers<<bkr
    bkr.backed_projects<<self
 end

  def backers
    @backers
  end

end
