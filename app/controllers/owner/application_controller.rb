class Owner::ApplicationController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'
end
