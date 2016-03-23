class Project

    attr_accessor :title, :backers, :add_backer #:project, :backer, :projects, 

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
       # self.backer = Backer.new(backer).project

      @backers << backer
      backer.backed_projects << self
    end


    def backers
        @backers
    end

end
