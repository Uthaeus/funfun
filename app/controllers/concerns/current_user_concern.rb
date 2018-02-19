module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.email = "guest@example.com"
    guest.phone_number = '4444444444'
    guest
  end

end