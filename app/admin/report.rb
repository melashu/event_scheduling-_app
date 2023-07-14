# frozen_string_literal: true
ActiveAdmin.register_page "Report" do
  content do
    'Melashu'
  end
  # filter 
  controller do
    def index
      @bookingtypes = BookingType.all
      respond_to do |format|
        format.html
        format.pdf do
          render pdf: "file_name" 
        end
      end
    end

    
  end
end
