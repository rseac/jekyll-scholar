module Jekyll
  class Scholar
    class Textit < BibTeX::Filter
      def apply(value)
        # Use of \g<1> pattern back-reference to allow for capturing nested {} groups.
        # The first (outermost) capture of $1 is used.
        puts "Textit"
        value.to_s.gsub(/\\textit(\{(?:[^{}]|\g<1>)*\})/) {
          "<i>#{$1[1..-2]}</i>"
        }
      end
    end
  end
end
