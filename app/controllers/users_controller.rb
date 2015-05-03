class UsersController < ApplicationController

  def addimage
  end

  def verify
  end

  def uploadimage
     uploaded_io = params[:image]
     @upload_dir = ''
     File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
      @upload_dir = Rails.root.join('public', 'uploads', "#{uploaded_io.original_filename}reference")
     end
     upload_reference(@upload_dir)
    redirect_to '/addimage'
  end


  def checkimage
  	 uploaded_io = params[:image]
     @upload_dir = ''
     File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
      @upload_dir = Rails.root.join('public', 'uploads', uploaded_io.original_filename)
     end
     upload_check(@upload_dir)
  end

  def upload_reference(file)  
   client = Cloudinary::Uploader.upload(file)
   puts $CLIENT.enroll(:url => client["secure_url"], :subject_id => "#{current_user.id}", :gallery_name => 'references')
  end

  def upload_check(file)
    client = Cloudinary::Uploader.upload(file)
    @verify_image = client["secure_url"]
    verify_identity(@verify_image)
  end
  
  def verify_identity(identity)
    @verify = $CLIENT.recognize(:url => identity, :gallery_name => 'references', :threshold => '.2', :max_num_results => '3')
    @verify['images'].each do |identity|
      if identity['transaction']['confidence'] != nil && identity['transaction']['confidence'].to_f > 0.65
        render(:success)
      else
        flash[:alert] = "Please try again"
        redirect_to "/verify"
      end
    end
  end

end
