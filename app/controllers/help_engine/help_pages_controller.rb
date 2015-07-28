require_dependency "help_engine/application_controller"

module HelpEngine
  class HelpPagesController < ApplicationController
    before_action :set_help_page, only: [:show, :edit, :update, :destroy]

    # GET /help_pages
    def index
      @help_pages = HelpPage.all
    end

    # GET /help_pages/1
    def show
    end

    # GET /help_pages/new
    def new
      @help_page = HelpPage.new
    end

    # GET /help_pages/1/edit
    def edit
    end

    # POST /help_pages
    def create
      @help_page = HelpPage.new(help_page_params)

      if @help_page.save
        redirect_to @help_page, notice: 'Help page was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /help_pages/1
    def update
      if @help_page.update(help_page_params)
        redirect_to @help_page, notice: 'Help page was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /help_pages/1
    def destroy
      @help_page.destroy
      redirect_to help_pages_url, notice: 'Help page was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_help_page
        @help_page = HelpPage.friendly.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def help_page_params
        params.require(:help_page).permit(:name, :slug, :content)
      end
  end
end
