module RTrack
  class Track

    include Workflow

    module States

      def self.included entity
        entity.workflow do
          state :new do
            event :good, transitions_to: :good
            event :normal, transitions_to: :normal
            event :bad, transitions_to: :bad
          end

          state :good do
          end

          state :normal do
          end

          state :bad do
          end
        end
      end

    end
  end
end