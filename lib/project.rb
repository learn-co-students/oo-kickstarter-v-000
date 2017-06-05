class Project
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    backer.class == Backer ? new_backer = backer : new_backer = Backer.new(backer)
    @backers << new_backer
    new_backer.backed_projects << self
  end

end
