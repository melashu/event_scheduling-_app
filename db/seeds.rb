user = User.create!(email: 'user102@gmail.com', password: '12345678', password_confirmation: '12345678', first_name: 'Melashu', last_name: 'Amare', booking_link: 'user102')

BookingType.create!(name: 'Meet rails dev', location: 'NCT 001', payement_required: false, price: 0, color: '#f2f2f2',user: user, start_date: 3.days.from_now, end_date: 3.days.from_now+6)
BookingType.create!(name: 'Programing for kids', location: 'NCT 001',payement_required: false, price: 0, color: '#f2f2f2',user: user, start_date: 3.days.from_now, end_date: 3.days.from_now+6)
BookingType.create!(name: 'Networking with dev', location: 'NCT 001', payement_required: false, price: 0, color: '#f2f2f2',user: user, start_date: 3.days.from_now, end_date: 3.days.from_now+6)
BookingType.create!(name: 'New Relase', location: 'NCT 001', payement_required: false, price: 0, color: '#f2f2f2',user: user, start_date: 3.days.from_now, end_date: 3.days.from_now+6)
BookingType.create!(name: 'Meet Mr.x', location: 'NCT 001', payement_required: false, price: 0, color: '#f2f2f2',user: user, start_date: 3.days.from_now, end_date: 3.days.from_now+6)

AdminUser.create!(email: 'meshu.amare@gmail.com',first_name: 'Meshu', last_name: 'Amare', password: '12345678', password_confirmation: '12345678') if Rails.env.development?