class Project
  attr_accessor :title, :backers
  attr_writer 
  attr_reader 

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end

end