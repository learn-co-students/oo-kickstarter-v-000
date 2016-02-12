class Project
  attr_accessor :title, :backers
  attr_reader :backer

  def initialize(title)
    @title = title
    @backers = Array.new
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
end
