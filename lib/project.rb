
class Project
  attr_accessor :title
  attr_reader :backers

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    @backers = []
    @backers << backer
    
  end



end
