module ApplicationHelper

	def admin_only
		unless current_user.admin?
			redirect_to :back, :alert => "Access denied."
		end
	end

	def title(title = nil)
		if title.present?
			content_for :title, title
		else
			content_for?(:title) ? APP_CONFIG['default_title'] + ' | ' + content_for(:title) : APP_CONFIG['default_title']
		end
	end
end
