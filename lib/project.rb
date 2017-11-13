class Project

    attr_accessor :title, :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(name)
        brilliant_backer = Backer.new(name)
        @backed_projects << brilliant_backer
    end

end