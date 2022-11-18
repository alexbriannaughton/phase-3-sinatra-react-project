class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/houses" do
    houses = House.all
    houses.to_json
  end

  get '/houses/:id' do
    house = House.find(params[:id])
    house.to_json(include: { reviews: { include: :user } })
  end

  get "/users/:username" do
    user = User.find_by_username(params[:username])
    user.to_json
  end

  post "/houses" do
    house = House.create(
      name: params[:name],
      image_link: params[:image_link],
      location: params[:location]
    )
    house.to_json
  end

  post "/reviews" do
    review = Review.create(
      text: params[:text],
      rating: params[:rating],
      user_id: params[:user_id],
      house_id: params[:house_id]
    )
    review.to_json
  end

  post "/users" do
    user = User.create(
      name: params[:name],
      username: params[:username]
    )
    user.to_json
  end

  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(
      text: params[:text],
      rating: params[:rating]
    )
    review.to_json
  end

  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end



end
