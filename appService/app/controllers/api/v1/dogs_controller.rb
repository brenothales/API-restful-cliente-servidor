module Api
    module V1
        class DogsController < ApplicationController
            def index
                @dogs = Dog.order('created_at DESC')
            end
        end
    end
end