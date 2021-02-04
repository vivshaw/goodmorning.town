class HomeController < ApplicationController
    # GET /
    def index
    end

    # GET /recent
    def recent
      @greetings = Greeting.last(10).reverse
    end
end
