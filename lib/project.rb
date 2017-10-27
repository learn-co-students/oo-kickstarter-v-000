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
    backers << backer if backer.is_a?(Backer)
    backer.backed_projects << self if !backer.backed_projects.include?(self)
  end
end
