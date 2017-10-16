class Project
  attr_accessor :backers, :title


  def initialize (title)
    self.backers = []
    self.title = title

  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end


end
