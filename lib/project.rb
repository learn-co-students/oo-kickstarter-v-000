class Project
  attr_accessor :title, :backer, :name
    @@backers = []
  def initialize(title)
    @title= title
  end
  def add_backer(backer)
    @@backers << backer
    backer.backed_projects << self
  end
  def backers
    @@backers
  end
end
