
class Project
		attr_accessor :backers
      attr_reader :title

def initialize(title)
	@backers = []
	@title = title
end



  def add_backer(backer)
      @backers << backer
  end

end