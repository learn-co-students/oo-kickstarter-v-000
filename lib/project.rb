class Project
  attr_accessor :backers, :title
  attr_reader :backed_projects

  def initialize(title)
    @title = title
    @backers = []
  end

  # def baker=(baker)
  #   @baker = baker
  #   baker.back_project(self)
  # end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
end
