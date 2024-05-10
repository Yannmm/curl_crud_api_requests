require 'faraday'

class HomeController < ApplicationController
    protect_from_forgery with: :null_session


    def index 
        conn = Faraday.new(url: 'http://localhost:3000')
        # index 
        # response = conn.get('/movies.json')
        # show
        # response = conn.get('/movies/1.json')
        # delete
        # conn.delete('/movie/1.json')
        # create
        # data = { movie: { title: 'Coolest Movie Ever!!!' } }
        # response = conn.post('/movies.json') do |request|
        #     request.headers['Content-Type'] = 'application/json'
        #     request.body = JSON.generate(data)
        # end

        # update
        data = { movie: { title: 'Shiaping the Future$$$' } }
        response = conn.patch('/movies/151.json') do |request|
            request.headers['Content-Type'] = 'application/json'
            request.body = JSON.generate(data)
        end
        @body_json = JSON.parse(response.body)
    end

    # curl -X POST -d 'name=rrr'  "localhost:3000/post_example?foo=rayman"
    def post_example
        render plain: request.params
    end
end