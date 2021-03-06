module Admin
  class DashboardController < ApplicationController
    include ApplicationHelper
    before_filter :check_admin?
    # add logic to only allow ccu admins to access this
    # before_filter :deny_access, :unless => :is_ccu_admin?
    def index
    	@orgs = Legacy::LegacyOrganization.where(org_verified:false).order('created_at DESC')
    end
  end
end
