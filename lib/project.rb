class Project
  attr_accessor :title, :backers
  # def title
  #   @title
  # end
  #
  # def title=(title)
  #   @title = title
  # end
  #
  # def backers
  #   @backers
  # end
  #
  # def backers=(backers)
  #   @backers = backers
  # end

  def initialize(title)
    # when creating a project object you just need a title and by default
    # @backers stores and array
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end

end
