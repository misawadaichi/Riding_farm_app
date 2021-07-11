# DO NOT MODIFY THIS FILE, it was auto-generated.
#
# Date: 2021-07-11 14:33:34 +0900
# Seeding Reservatiuon
# Written with the command:
#
#   rails_console 
#
start = Time.zone.local(2021,6,1,10)
60.times do |i|
  Reservation.seed(:id,
    {"user_id"=>1,  "start_time"=> start + i.day},
    {"user_id"=>1,  "start_time"=> start + i.day + 1.hour},
    {"user_id"=>1,  "start_time"=> start + i.day + 2.hour},
    {"user_id"=>1,  "start_time"=> start + i.day + 3.hour},
    {"user_id"=>1,  "start_time"=> start + i.day + 4.hour},
    {"user_id"=>1,  "start_time"=> start + i.day + 5.hour}
  )
end
# End auto-generated file.
