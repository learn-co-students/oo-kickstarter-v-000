class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(new_backer)
    if new_backer.is_a? Backer
      if !(@backers.include?(new_backer))
        @backers<<new_backer
        new_backer.backed_projects << self
      end
    end
  end

end
