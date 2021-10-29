class TablesController < ApplicationController
   before_action :find, only: %i[edit show update destroy]
  def index
    @admin = User.find_by(first_name: "CRANE")
    @user = current_user
    @tables = Table.all
  end

  def edit
  end

  def new
    @table = Table.new
  end

  def create
    @table = Table.create(table_params)
    @table.user = current_user
    if @table.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def update
    @table.update(table_params)
    redirect_to root_path
  end

  def destroy
    @table.delete
    redirect_to root_path
  end
  private

  def table_params
    params.require(:table).permit(:name, :description, :author, :photo)
  end

  def find
    @table = Table.find(params[:id])
  end
end
