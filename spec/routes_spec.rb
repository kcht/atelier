require "rails_helper"

RSpec.describe 'routes to the google_books', type: :routing do
  it { expect(get: '/').to route_to('books#index')}
  it { expect(get: '/google-isbn').to route_to('google_books#show') }

  it { expect(get: '/books/1/reserve').to route_to('reservations#reserve', book_id: '1')} # po prawej rzeczy widoczne dla kontrolera
  it { expect(get: '/books/1/take').to route_to('reservations#take', book_id: '1')}
  it { expect(get: '/books/1/give_back').to route_to('reservations#give_back', book_id: '1')}
  it { expect(get: '/books/1/cancel_reservation').to route_to('reservations#cancel', book_id: '1')}
  it { expect(get: '/users/1/reservations').to route_to('reservations#users_reservations', user_id: '1')}
end
