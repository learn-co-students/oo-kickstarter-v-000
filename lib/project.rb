class Project

  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer_name)
    @backers << backer_name
    backer_name.backed_projects << self
  end
end
