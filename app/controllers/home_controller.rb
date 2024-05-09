class HomeController < ApplicationController
    protect_from_forgery with: :null_session


    def index 
        render plain: "Hello world2 -> #{request.params}"
    end

    curl -X POST -d 'name=rrr'  "localhost:3000/post_example?foo=rayman"
    def post_example
        render plain: request.params
    end
end