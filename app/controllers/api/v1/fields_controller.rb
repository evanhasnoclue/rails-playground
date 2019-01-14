class Api::V1::FieldsController < Api::V1::BaseController

  def update
    @field = Field.find(params[:id])
    if @field.update(params_field)
      # redirect_to restaurant_path(@restaurant)
      render json: @field.to_json
    else
      render_error
    end
  end


  private

  def params_field
    params.require(:field).permit(:name, :description, :capacity, :price_per_hour)
  end
end
