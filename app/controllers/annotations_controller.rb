class AnnotationsController < ApplicationController

  def index
    article = Article.find_by(url: params[:url])
    annotations = Annotation.where(
      article_id: article.id,
      lens_id: params[:lens_id],
      summary: false
    )

    image_url = Lens.find(params[:lens_id]).image_url

    render json: {annotations: annotations, imageUrl: image_url}
  end
end
