class Project
attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    Backer.new(backer)
    backer.backed_projects << self
    @backers << backer
  end
end
