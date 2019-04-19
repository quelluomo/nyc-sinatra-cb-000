class LandmarksController < ApplicationController
  # add controller methods

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find_by_id(params[:id])
    erb :'/landmarks/show'
  end

  post '/landmarks' do
    @landmark = Landmark.create(:name => params["landmark"]["name"], :year_completed => params["landmark"]["year_completed"])

    @landmark.save
    redirect to "/landmarks/show"
  end
end
