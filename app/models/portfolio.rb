class Portfolio < ApplicationRecord

    validates_presence_of :title, :thumb_image, :body, :main_image
end
