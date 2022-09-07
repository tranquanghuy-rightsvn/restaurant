class Admin::StoresController < Admin::AdminController
  before_action :set_store, except: %i[index new create]

  def index
    @stores = Store.all
  end

  def show; end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new params_stores
    if @store.save
      redirect_to admin_stores_path(@store)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @store.update params_stores
      redirect_to admin_stores_path(@store)
    else
      render :edit
    end
  end

  def destroy
    @store.destroy!
    redirect_to admin_stores_path
  end

  private

  def set_store
    @store = Store.find_by id: params[:id]
  end

  def params_stores
    params.require(:store).permit :name, :description, :address, :phone, :image, :open_time
  end
end
