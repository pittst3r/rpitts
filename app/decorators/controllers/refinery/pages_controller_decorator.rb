Refinery::PagesController.class_eval do
  def home
    find_page
    render :show
  end
end
