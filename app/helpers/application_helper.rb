module ApplicationHelper
	include Pagy::Frontend

  def apply_notice
    msg = notice
    unless msg.blank?
      render "layouts/notice", msg: msg
    end
  end
end
