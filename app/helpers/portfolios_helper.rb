# module PortfoliosHelper
#   def image_generator(height:, width:)
#     "http://placehold.it/#{height}x#{width}"
#   end

#   def portfolio_img img, type
#     byebug
#     if img.model.main_image.url? || img.model.thumb_image.url?
#       img
#     elsif type == 'thumb'
#       image_generator(height: '350', width: '200')
#     elsif type == 'main'
#       image_generator(height: '600', width: '400')
#     end
#   end
# end

# module PortfoliosHelper
#   def image_generator(height:, width:)
#     "http://placehold.it/#{height}x#{width}"
#   end

#   def portfolio_img(img, type)
#     if img.is_a?(String)
#       # If img is a String (URL), return it directly
#       img
#     elsif img.respond_to?(:model) && img.model.respond_to?(:main_image?) && img.model.respond_to?(:thumb_image?)
#       # Assuming img.model is an ActiveRecord model with main_image? and thumb_image? methods
#       case type
#       when 'thumb'
#         img.model.thumb_image.url
#       when 'main'
#         img.model.main_image.url
#       else
#         # Fallback to placeholder image
#         image_generator(height: '350', width: '200')
#       end
#     else
#       # Fallback to placeholder image
#       image_generator(height: '350', width: '200')
#     end
#   end
# end

# module PortfoliosHelper
#   def image_generator(height:, width:)
#     "http://placehold.it/#{height}x#{width}"
#   end

#   def portfolio_img(portfolio_item, type)
#     if portfolio_item.respond_to?(:main_image?) && portfolio_item.respond_to?(:thumb_image?)
#       case type
#       when 'thumb'
#         portfolio_item.thumb_image.url || image_generator(height: '350', width: '200')
#       when 'main'
#         portfolio_item.main_image.url || image_generator(height: '600', width: '400')
#       else
#         image_generator(height: '350', width: '200')
#       end
#     else
#       image_generator(height: '350', width: '200')
#     end
#   end
# end

module PortfoliosHelper
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def portfolio_img(img, type)
    main_image_url = img.main_image.url if img.respond_to?(:main_image?)
    thumb_image_url = img.thumb_image.url if img.respond_to?(:thumb_image?)

    case type
    when 'thumb'
      thumb_image_url.present? ? thumb_image_url : image_generator(height: '350', width: '200')
    when 'main'
      main_image_url.present? ? main_image_url : image_generator(height: '600', width: '400')
    else
      image_generator(height: '350', width: '200')
    end
  end
end

  
