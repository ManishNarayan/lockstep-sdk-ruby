#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2023 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2023 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # Represents the email reply suggestion from the SAGE GMS API
    class EmailReplyGeneratorSuggestions

        ##
        # Initialize the EmailReplyGeneratorSuggestions using the provided prototype
        def initialize(params = {})
            @kind = params.dig(:kind)
            @body = params.dig(:body)
        end

        ##
        # @return [String] The kind of reply generated by the GMS Api
        attr_accessor :kind

        ##
        # @return [String] The body of the reply generated by the GMS Api
        attr_accessor :body

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'kind' => @kind,
                'body' => @body,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
