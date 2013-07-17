class DocumentsController < ResourceController
  before_action :expire_cache, only: [:index, :show]

  restful model: :document

  protected
  # Never trust parameters from the scary internet, only allow the white list through.
  def secure_params
    params.require(:document).permit(:name, :description)
  end

  def expire_cache
    expires_in 30.seconds
  end
end
