class Book < ApplicationRecord
    enum status: %i[in_shell lended]
end
