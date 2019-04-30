class Portfolio < ApplicationRecord

    validates_presence_of :title, :thumb_image, :body, :main_image

    def self.angular
        where(subtitle: "Angular")
    end

    scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }

    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= "https://placehold.it/600x400"
        self.thumb_image ||= "https://placehold.it/300x200"
    end
end
