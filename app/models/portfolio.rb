class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    # 2 ways to show only the items with 'Angular' or 'Ruby on Rails' subtitle and add in index method in controller @portfolio_items = Portfolio.angular
    def self.angular
        where(subtitle: 'Angular')
    end
    
    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

    # Set default values for images. ||= means if value is nil then return the given value
    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= "http://placehold.it/600x400"
        self.thumb_image ||= "http://placehold.it/350x200"
    end
end
