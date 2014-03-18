module Mercury
  module Authentication

    def can_edit?
      Rails.logger.debug("[can_edit]")
      false # check here to see if the user is logged in/has access
    end

  end
end
