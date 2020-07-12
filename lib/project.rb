class Project
  # a Project has many Backers
attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
    # add the instance directly to the variable to avoid
    # entering into a loop
  end

end