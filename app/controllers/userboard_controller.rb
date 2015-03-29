class UserboardController < ApplicationController
  def index
    me = User.find(current_user)
    @divs = me.division ? me.division.subjects : []

  end
end