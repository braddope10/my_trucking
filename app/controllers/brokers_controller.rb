class BrokersController < ApplicationController

    def index
        @brokers = Broker.all

        @brokers = @brokers.filter_duplicates
        # @brokers = @brokers.uniq{ |w| w.name }
    end

end
