class NodesController < ApplicationController
before_action :find_node, only: [:show, :edit, :update, :destroy]

  def index
    @nodes = Node.all
  end

  def show
  end

  def new
    # @organization = Organization.find(params[:parent_id])
    @node = Node.new
  end

  def create
    @node = Node.new(node_params)
    # @organization = Organization.find(params[:parent_id])
    @node.organization = @organization
    if @node.save
      redirect_to organization_path(@organization)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @node.update(node_params)
      redirect_to organization_node_path(@node)
    else
      render :edit
    end
  end

  private

  def find_node
    @node = Node.find(params[:id])
  end

  def node_params
    params.require(:node).permit(:name)
  end
end
