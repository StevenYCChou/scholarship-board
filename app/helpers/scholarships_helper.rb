module ScholarshipsHelper
  def sort?(params)
    params[:sort]
  end
  def sort_prize?
    @sort == "prize"
  end
  def sort_deadline?
    @sort == "deadline"
  end
end
