class Project
  attr_accessor :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    x = Backer.find_or_add_by_name(backer)
    x.backed_projects << self
    @backers << x
  end

end
