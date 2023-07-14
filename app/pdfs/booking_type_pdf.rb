class BookingTypePdf < Prawn::Document
    def initialize(data)
        super()
        @bookigs = data
     
        @bookigs.each do |book|
        text "Generated at #{Time.zone.now}"
         move_down 120
         table each_data_in_table(book) do 
            row(0).font_style = :bold
            self.header = true
         end
         start_new_page
        end
    

        header_footer


    end

    def header_footer
        repeat :all do
            bounding_box [bounds.left, bounds.top], :width  => bounds.width do
                font "Helvetica"
            image open("app/assets/images/cover.png"), fit: [100, 100], position: :center
                text "Here's My Fancy Header", :align => :center, :size => 25
                stroke_horizontal_rule
            end
        
            bounding_box [bounds.left, bounds.bottom + 40], :width  => bounds.width do
                font "Helvetica"
                stroke_horizontal_rule
                move_down(5)
                text "And here's a sexy footer", :size => 16, align: :center
                text "phone number", :size => 16, align: :center

            end
          end
      
    end

    def each_data_in_table(data)
       [
        ['Name', 'Location',"payement_required", "price", "user_id", "created_at", "updated_at", "start_date", "end_date"],
        %w[data.name data.location data.payement_required data.price data.user.first_name data.created_at data.updated_at data.start_date data.end_date]
       ]
    end


end