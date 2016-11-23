class Project
  attr_reader :title
  attr_accessor :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(new_backer)
    self.backers << new_backer
    new_backer.backed_projects << self
  end
end
