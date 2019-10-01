class TwsController < ApplicationController
  before_action :set_tw, only: [:show, :edit, :update, :destroy]

  def index
    @tws = Tw.all
  end

  def new
    @tw = Tw.new
  end

  def create
    @tw = Tw.new(tw_params)
    if params[:back]
      render :new
    else
    if @tw.save
      redirect_to tws_path, notice:"twしました〜"
    else
      # 入力フォームを再描画します。
      render :new
    end
  end
end

  # 定義する
  def show
  end

  def edit
  end

  def update
    if @tw.update(tw_params)
      redirect_to tws_path, notice:"twを編集しました〜"
    else
      render :edit
    end
  end

  def destroy
    @tw.destroy
    redirect_to tws_path, notice:"twを削除しました〜"
  end

  def confirm
    @tw = Tw.new(tw_params)
    render :new if @tw.invalid?
  end

  private

  def tw_params
    params.require(:tw).permit(:content)
  end

  def set_tw
    @tw = Tw.find(params[:id])
  end
end