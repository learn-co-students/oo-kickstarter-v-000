class Project
  attr_accessor :title, :backers
  attr_reader :backed_projects

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(added_backer)
    @backers << added_backer
    added_backer.backed_projects << self 
  end
end
