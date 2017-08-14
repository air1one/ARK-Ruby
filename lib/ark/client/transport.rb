module Ark
  class Client
    module Transport
      def list
        get('peer/list')
      end

      def blocksCommon(ids)
        get('peer/blocks/common', {ids: ids.join(",")})
      end

      def block(id)
        get('peer/block', compact('id'))
      end

      def blocks
        get('peer/blocks')
      end

      def createBlock(block)
        post('peer/blocks', {block: block})
      end

      def transactions
        get('peer/transactions')
      end

      def transactionsFromIds(ids)
        get('peer/transactionsFromIds', {ids: ids.join(",")})
      end

      def height
        get('peer/height')
      end

      def status
        get('peer/status')
      end
    end
  end
end
