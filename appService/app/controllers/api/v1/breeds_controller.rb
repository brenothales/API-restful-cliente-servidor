module Api
    module V1
        class BreedsController < ApplicationController
            def index
                @breeds = Breed.order('name ASC')
            end
        end
    end
end