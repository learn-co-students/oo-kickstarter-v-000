class Project
  attr_accessor :backers, :title
  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers<<backer
    if backer.backed_projects.include?(self) == false
      backer.backed_projects << self
    end
  end
end
