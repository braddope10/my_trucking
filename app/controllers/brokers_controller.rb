class BrokersController < ApplicationController

    def index
        @brokers = Broker.filter_duplicates
    end

end
