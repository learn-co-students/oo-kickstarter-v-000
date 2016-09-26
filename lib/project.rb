class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    if backer.is_a?(Backer)
      @backers << backer
      backer.backed_projects << self
    end
  end
end
