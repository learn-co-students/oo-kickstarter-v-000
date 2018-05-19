class Project
  
  attr_accessor :backer, :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def backers
    @backers
  end
  
  def add_backer(backer)
    if !@backers.include?(backer)
    @backers << backer
    backer.back_project(self)
    end
  end
  
end

