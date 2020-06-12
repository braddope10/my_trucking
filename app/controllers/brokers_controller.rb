class BrokersController < ApplicationController

    def index
        @brokers = Broker.all.uniq
    end

    

end
