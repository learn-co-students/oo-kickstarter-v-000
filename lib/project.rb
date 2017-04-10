require 'pry'
class Project
  attr_accessor :title, :backers
  def initialize(title)
    @title = title
    @backers = []
  end
  def add_backer(backer)
    backers << backer
    #binding.pry
    #filter if (무한루프일때는 컨디션을 추가한다)
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end
end
