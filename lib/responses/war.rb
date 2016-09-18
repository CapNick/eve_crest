module EveCrest
  module Response
    class War < BaseResponse
      def started
        DateTime.parse(data['timeStarted'])
      end
      def declared
        DateTime.parse(data['timeDeclared'])
      end
      def finished
        DateTime.parse(data['timeFinished'])
      end
      def aggressor_id

      end
      def aggressor_name

      end
      def aggressor_kills

      end
      def aggressor_kills_isk

      end
      def defender_id

      end
      def defender_name

      end
      def defender_kills

      end
      def defender_kills_isk

      end
      def open_for_allies?

      end
      def ally_count

      end
      def allies

      end
      def is_metual?

      end
    end
  end
end