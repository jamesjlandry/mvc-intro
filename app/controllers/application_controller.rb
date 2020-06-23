class ApplicationController < Sinatra::Base
    set :method_override, true
        set(:views, 'app/views')
        get('/list_airlines') do
            @airlines = Airline.all
            erb(:list_airlines)
        end
        get('/single_airline/:id') do
            @airline = Airline.find(params[:id])
            erb(:single_airline)
        end
        delete('/single_airline/:id') do
            @airline = Airline.find(params[:id])
            @airline.destroy()
        end
    end