class Project
  attr_accessor :title, :backers
  
  def initialize(title)
    @title = title
    @backers = backers
    @backers = []
  end
  
  def add_backer(one_backer)
    @backers << one_backer
    one_backer.backed_projects = self
  end
  
  # def add_backer
  #   @backers
  # end
  
end