class Project
  attr_accessor :backers, :title
  @@all = []
  def initialize(title)
    @title = title
    @backers = []
    @@all << self
  end

    def add_backer(backer)
      @backers << backer
      Backer.all.each do |x|
        if x == backer
          x.backed_projects << self
        end
      end
    end

    def self.all
      @@all
    end
end
