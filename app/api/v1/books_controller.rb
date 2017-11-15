module Api
  module V1
    class BooksController < BaseController
      def lookup
        binding.pry
        render json: books
      end

      private

      def books
        Book.includes(:category).map do |book|
          book.attributes.slice('title', 'isbn')
            .merge(category_name: book.category_name)
            .symbolize_keys
        end
      end
    end
  end
end
