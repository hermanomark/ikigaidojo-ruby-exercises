=begin
class Chair

   def initialize
      @color  = nil
      @status = nil
      @brand  = nil
   end

   def get_color
     puts @color
     return
   end

   def set_color(color)
    @color = color
   end

end
=end


class Chair
   def initialize(color, status, brand)
      @color = color
      @status = status
      @brand = brand
   end

   def get_color
     puts @color
   end

   def get_status
     puts @status
   end

   def get_status
     puts @brand
   end
end
=end

=begin
class Personal_Information
   def initialize(first_name, last_name, email, phone_no, address)
      @first_name = first_name
      @last_name = last_name
      @email = email
      @phone_no = phone_no
      @address = address
   end

   def get_personal_info
     puts @first_name
     puts @last_name
     puts @email
     puts @phone_no
     puts @address
   end

   def get_first_name
     puts @first_name
   end

   def get_last_name
     puts @last_name
   end

   def get_email
     puts @email
   end

   def phone_no
     puts @phone_no
   end

   def get_address
     puts @address
   end
end


# sample on how to run in irb
#chair1 = Chair.new("black", "Occupied", "Uratex")
#chair2 = Chair.new("white", "Empty", "Rak")
