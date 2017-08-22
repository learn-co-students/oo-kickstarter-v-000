class Project
  attr_accessor :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer if !(self.backers.include?(backer)) ;
    backer.backed_projects << self if !(backer.backed_projects.include?(self)) ;
  end

end
