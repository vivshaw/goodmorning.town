class HomeController < ApplicationController
    # GET /
    def index
      @greetings = Greeting.last(10).reverse
    end
end
