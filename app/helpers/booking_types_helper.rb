module BookingTypesHelper
    def duration(booking_type)
        if booking_type.duration == 60
            '1 hr'
        else
            booking_type.duration.to_formatted_s + ' mins'
        end
    end
end
