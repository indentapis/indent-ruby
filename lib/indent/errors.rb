module Indent
  class Error < StandardError; end
  class APIError < Error; end

  # errors
  class PetitionAlreadyExistsError < APIError; end
end