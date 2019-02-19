class Project
  attr_reader :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end 

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self 
  end

end



Project.new("ipod")
jobs = Backer.new("Steve Jobs")
ipod.add_backer(jobs)
