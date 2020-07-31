class Api::ReviewController < ApplicationController
    before_action :require_logged_in

    def create
        @review = current_user.reviews.new(review_params)

        if @review.save
            render :show
        else
            render json: @review, status: :unprocessable_entity
        end
    end

    private

    def review_params
        params.require(:review).permit(:author_id, :body, :spot_id, :date)
    end
end
