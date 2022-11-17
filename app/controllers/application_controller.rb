class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # =======APPOINTMENT
  get "/appointments" do
    app = Appointment.all
    app.to_json
  end

  post "/appointments" do
    app = Appointment.create(
    user_id: params[:user_id],
    workout: params[:workout],
    date: params[:date],
    duration: params[:duration],
    trainer_id: params[:trainer_id]
    )
    app.to_json
  end

  delete '/appointment/:id' do
    app = Appointment.find(params[:id])
    app.destroy
    app.to_json
  end
  # =======APPOINTMENT
  # ==========CONTACT
  get "/feedback" do
    feed = Feedback.all
    feed.to_json
  end

  post "/feedback" do
    feed = Feedback.create(
    name: params[:name],
    email: params[:email],
    phone: params[:phone],
    message: params[:message]
    )
    feed.to_json
  end
  # ==========CONTACT
  # =========REVIEW
  get "/reviews" do
    review = Review.all
    review.to_json
  end

  post "/review" do
    rev = Review.create(
    user_id: params[:user_id],
    review: params[:review]
    )
    rev.to_json
  end

  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end
  # =========REVIEW
  # =========SIGNUP
  post "/users" do 
    user = User.create(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    password: params[:password],
    confirm_password: params[:confirm_password],
    trainer_id: params[:trainer_id]
    )
    user.to_json
  end

  get "/users" do
    user = User.all
    user.to_json
  end
  # =========SIGNUP
  # =========TRAINERS
  get "/trainers" do
    trainers = Trainer.all
    trainers.to_json
  end

  post "/trainers" do
    trainer = Trainer.create(
      name: params[:name],
        job_title: params[:job_title],
        facebook: params[:facebook],
        twitter: params[:twitter],
        linkedin: params[:linkedin],
        pintrest: params[:pintrest],
        image: params[:image],
        description: params[:description]
    )
    trainer.to_json
  end
  # =========TRAINERS

end
