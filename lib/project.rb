class Project
  attr_accessor :title
  attr_reader :backers
  @backers = []

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    if @backers.include?(backer)
      return @backers
    end
    @backers.push(backer)
    backer.back_project(self)
  end

end
