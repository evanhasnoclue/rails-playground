class Api::V1::UsersController < Api::V1::BaseController
  URL = "https://api.weixin.qq.com/sns/jscode2session".freeze
  before_action :set_user, only: [:show, :update]


  def login
    @user = User.find_or_create_by(open_id: wechat_user.fetch("openid"))
    render json: {
      userId: @user.open_id
    }
  end

  def wechat_user
  @wechat_response ||= RestClient.post(URL, wechat_params)
  @wechat_user ||= JSON.parse(@wechat_response.body)
  end

  def create
    if @user = User.find_by(open_id: user_params[:open_id])
      render json: @user.to_json
    else
      @user = User.new(user_params)
      if @user.save
        render json: @user.to_json
      else
        render_error
      end
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      # redirect_to restaurant_path(@restaurant)
      render json: @user.to_json
    else
      render_error
    end
  end

  private


  def user_params
    params.require(:user).permit(:nickname, :open_id, :gender, :city, :province, :country, :avatarUrl, :info, :like)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def render_error
    render json: { errors: @user.errors.full_messages },
      status: :unprocessable_entity
  end

  def wechat_params
  {
    appid: ENV["APP_ID"],
    secret: ENV["APP_SECRET"],
    js_code: params[:code],
    grant_type: "authorization_code"
  }
  end

end
