class Project
  attr_accessor :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def backers
    @backers
  end

  def add_backer(backer)
    @backers << backer
    p = Project.new(title)
    add_project(p)
  end

end
