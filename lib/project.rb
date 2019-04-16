class Project

  attr_accessor :title, :backers

  def initialize(input_title)
    @title = input_title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end

end
