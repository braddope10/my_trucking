class BrokersController < ApplicationController

    def index
        @brokers = Broker.all
        @brokers = @brokers.uniq{ |w| w.name }
        # @jobs = Job.all
        # @job = Job.find_by(id: params[:id])

        # binding.pry
    end

    # @brokers.uniq do |w|
    #     w.name
    # end

    

end
