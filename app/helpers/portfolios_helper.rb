module PortfoliosHelper
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def portfolio_img(img, type)
    if img.is_a?(String)
      # If img is a String (URL), return it directly
      img
    elsif img.respond_to?(:model) && img.model.respond_to?(:main_image?) && img.model.respond_to?(:thumb_image?)
      # Assuming img.model is an ActiveRecord model with main_image? and thumb_image? methods
      case type
      when 'thumb'
        img.model.thumb_image.url
      when 'main'
        img.model.main_image.url
      else
        # Fallback to placeholder image
        image_generator(height: '350', width: '200')
      end
    else
      # Fallback to placeholder image
      image_generator(height: '350', width: '200')
    end
  end
end


  
