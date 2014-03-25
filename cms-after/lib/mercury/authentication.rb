module Mercury
  module Authentication

    def can_edit?
      user_signed_in? # check here to see if the user is logged in/has access
    end

  end
end
