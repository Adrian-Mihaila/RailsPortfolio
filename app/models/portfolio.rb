class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    # 2 ways to show only the items with 'Angular' or 'Ruby on Rails' subtitle and add in index method in controller @portfolio_items = Portfolio.angular
    def self.angular
        where(subtitle: 'Angular')
    end
    
    # scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
end
