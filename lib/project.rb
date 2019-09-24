class Project
  attr_accessor :title, :backers, :backed_projects

  @backers = []
  def initialize(title)
    @title = title
    @backers = []
  end

  def self.add_backer(backer)
    @backers << backer
  end

  def add_backer(backer)
    @backers << backer
    backer.back_project(self)
  end

end
