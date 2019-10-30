class OrganizationsController < ApplicationController
  before_action :find_organization, only: [:show]

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      redirect_to organization_path(@organization)
    else
      render :new
    end
  end

  def show

  end

  private

  def find_organization
    @organization = Organization.find(params[:id])
  end

  def organization_params
    params.require(:organization).permit(:name)
  end
end
