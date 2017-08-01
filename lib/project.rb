class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = Array.new
  end

  def add_backer(backer)
    @backers << backer
    backer.back_project( self )
  end

end
