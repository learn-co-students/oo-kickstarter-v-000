class Project
  attr_accessor :title, :backers #<--- .backers ref'd in backer.rb

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(newbacker)
    @backers << newbacker
    newbacker.backed_projects << self
  end
end
