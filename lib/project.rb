require 'pry'
class Project
  attr_reader :title, :backers

  def initialize(title)
    @title = title
    @backers = Array.new
  end

  def backer_exists?(backer)
    @backers.include?(backer)
  end

  def add_backer(backer)
    self.backers << backer
    if !backer.project_exists?(self)
      backer.back_project(self)
    end
  end
end
