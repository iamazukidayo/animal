class DiarysController < ApplicationController
  
  def new
    @diary = Diary.new
  end
  
  def create
    @diary = Diary.new(diary_params)
    @diary.user_id = current_user.id
    @diary.save
    redirect_to user_path(@user.id)
  end 

  def index
    @diarys = Diary.all
    @user = current_user
  end

  def show
    @diary = Diary.find(params[:id])
  end
  
  def edit
    @diary = Diary.find(params[:id])
  end 
  
  def update
    @diary = Diary.find(params[:id])
    @diary.update(diary_params)
    redirect_to diary_path(@diary.id)
  end 
  
  private
  def diary_params
    params.require(:diary).permit(:title, :body, :image)
  end 
end
