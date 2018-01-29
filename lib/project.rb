class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(the_backer)
# book = Project.new("Ruby, Ruby, and More Ruby")
# steven = Backer.new("Steven")
# book.add_backer(steven)
# expect(book.backers).to include(steven)
    self.backers << the_backer
# expect(steven.backed_projects).to include(book)
    the_backer.backed_projects << self
  end
end
