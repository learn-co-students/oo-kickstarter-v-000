class Project
  attr_accessor :title, :backers
  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    # so projects can add backers to their list of backers and report on the backers who support them.
    # new_project = Project.new(backer_name)
    # self.backer = backer_nam
    @backers << backer
    backer.backed_projects << self
  end

end
