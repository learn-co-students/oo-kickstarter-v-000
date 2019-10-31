require 'pry'

class Project
  attr_accessor :title
  attr_reader :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    raise ArgumentTypeMismatchError, "#{backer.class} received, Backer expected." if !backer.is_a?(Backer)
    @backers << backer

    backer.back_project(self) unless backer.backed_projects.include?(self)
    #binding.pry
  end
end
