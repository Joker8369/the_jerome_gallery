class TablesController < ApplicationController
  def index
    @user=current_user
    @tables = Table.all
  end

  def editnew
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end
end
