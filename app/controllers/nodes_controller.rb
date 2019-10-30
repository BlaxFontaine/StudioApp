class NodesController < ApplicationController
before_action :find_node, only: [:show]

  def new
    @node = Node.new
  end

  def create
    @node = Node.new(node_params)
    if @node.save
      redirect_to node_path(@node)
    else
      render :new
    end
  end

  def show

  end

  private

  def find_node
    @node = Node.find(params[:id])
  end

  def node_params
    params.require(:node).permit(:name)
  end
end
