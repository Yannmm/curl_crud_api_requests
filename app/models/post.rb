class Post < ApplicationRecord
    broadcasts_to -> (post) { :post_list }
end
