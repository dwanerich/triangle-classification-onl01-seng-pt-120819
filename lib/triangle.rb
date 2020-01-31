
class Triangle

  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

    def kind
        if (s1 * s2 * s3) == 0 || (s1 + s2) <= s3 || (s1 + s3) <= s2 || (s2 + s3) <= s1
          begin
          raise TriangleError
          # rescue TriangleError => error
          # return error.message
      elsif s1 == s2 && s1 == s3
        kind = :equilateral

      elsif s1 == s2 || s1 == s3 || s2 == s3
        kind = :isosceles

      else
          kind = :scalene
      end
    end
  end
end


    class TriangleError < StandardError
      def message
        puts "this is not a triangle."
      end
    end
