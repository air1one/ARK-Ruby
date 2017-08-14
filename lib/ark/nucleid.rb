require 'json'

module Ark
  module Nucleid
    def buildTransaction(method, arguments)
      arguments = buildTransactionArguments(arguments)

      output = `nucleid -r arkjs -e #{method} #{arguments} --ojson`

      JSON.parse output
    end

    def buildTransactionArguments(arguments)
      result = ""

      arguments.each do |key, value|
        if value.is_a? String
          result.concat('"' + value.to_s + '" ')
        else
          result.concat(value.to_s + ' ')
        end
      end

      result
    end
  end
end
