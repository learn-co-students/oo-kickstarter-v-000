class Project

  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    puts "type error" if !backer.is_a?(Backer)
    self.backers << backer
    backer.backed_projects << self unless backer.backed_projects.include?(self)
  end
end
