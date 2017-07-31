class Project
  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def backers
    @backers
  end

  def add_backer(backer)
    if backer.instance_of? Backer
      @backers << backer
      backer.backed_projects << self
    end
  end
end
