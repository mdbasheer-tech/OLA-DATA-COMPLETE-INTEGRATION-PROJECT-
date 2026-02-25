/*select * 
from bookings

-- queries -- 

-- 1. Retrieve bookings which are successful
CREATE VIEW Succesful_bookings AS
SELECT *
FROM bookings
WHERE Booking_Status = 'Success';

SELECT * FROM Succesful_bookings;
*/

/*-- 2. find the average ride distance for each vehicle type -- 

SELECT 
    Vehicle_Type,
    AVG(CAST(Ride_Distance AS FLOAT)) AS avg_distance
FROM bookings
GROUP BY Vehicle_Type;


-- 3. get the total number of rides cancelled -- 

select 
count(*) 
from bookings
where Booking_Status = 'canceled by customer'

-- 4. list top 5 customers for highest number of rides -- 

select 
Customer_ID,
count(Booking_ID) as total_rides
from bookings
group by Customer_ID
order by total_rides desc *

-- 5 . get the number of rides cancelled by drivers due to personnel or car related -- 

select count(*) from bookings

where Canceled_Rides_by_Driver = 'Personal & Car related issue'


-- 6. find the maximum and min driver rating for prime sedan booking --

select 
max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_rating
from bookings
where Vehicle_Type = 'Prime Sedan'

-- 7. ret rides where payment was done using upi-- 

select *
from bookings
where Payment_Method = 'UPI'

-- 8 . find the average customer rating per vehicle type -- 

select 
AVG(Customer_Rating) as avg_customer_rating,
Vehicle_Type
from bookings
group  by Vehicle_Type

-- 9. calculate the total booking value of the rides completed succesfully --


SELECT 
    SUM(CONVERT(FLOAT, Booking_Value)) AS total_success_value
FROM bookings
WHERE Booking_Status = 'Success';

-- 10. select incomplete ride along with a reason -- 

select 
Booking_ID, Incomplete_Rides_Reason
from bookings
where Incomplete_Rides = 'yes'*/


