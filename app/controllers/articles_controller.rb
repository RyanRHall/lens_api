class ArticlesController < ApplicationController
  def summary
    article = Article.where(url: params[:url])
               .includes(:annotations)
               .includes(:lenses)
               .first

   data_hash = {}

   article.annotations.each do |annotation|
     if annotation.summary
       data_hash[annotation.lens_id] ||= { annotations: [] }
       data_hash[annotation.lens_id][:annotations] << annotation
       data_hash[annotation.lens_id][:image_url] ||= annotation.lens.image_url
       data_hash[annotation.lens_id][:name] ||= annotation.lens.name
     end
   end

   render json: data_hash
  end

  def rating
    debugger
    article = Article.find_by(url: params[:url])
    if article
      render json: {rating: "N/A"}
    else
      render json: {rating: article.rating}
    end
  end
end
