class Project

  attr_accessor :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer unless @backers.include?(backer)
    backer.backed_projects << self unless backer.backed_projects.include?(self)
  end

  def backers
    @backers
  end


end
