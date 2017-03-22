class Project

  attr_accessor :backers
  attr_reader :title


  def initialize(title)
    @title = title
    @backers = []
  end

  # describe 'Project - #add_backer' do
  #  it 'accepts a Backer as an argument and stores it in a backers array' do
  #    book = Project.new("Ruby, Ruby, and More Ruby")
  #    steven = Backer.new("Steven")

      # Same here. We are actually passing around a Backer object. This is pretty
      # simple functionality, but objects can interact with one another in really
      # cool ways.
  #    book.add_backer(steven)

  #    expect(book.backers).to include(steven)
  #  end
  # end

  def add_backer(backer)
    @backers << backer
    backer.back_project(self)
  end


end
