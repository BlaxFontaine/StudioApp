class OrganizationsController < ApplicationController
  before_action :find_organization

  def show

  end

  private

  def find_organization
    @organization = Organization.find(params[:id])
  end
end
