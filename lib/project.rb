class Project
    attr_accessor :title, :backer,  :backers
    @@all = []

  def initialize(title)
    @backers = []
    @title = title
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end

end
