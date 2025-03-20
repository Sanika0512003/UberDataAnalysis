create database Uber;
use Uber;

#1. Retrive all succesful bookings
create view Successful_Bookings as
select * from bengaluru_rides_data
where BookingStatus = "Success";
select * from Successful_Bookings;
#2. Find the average ride distance for each vehicle type:
create view ride_distance_for_each_vehicle as
select VehicleType, avg(RideDistance)
as avg_distance from bengaluru_rides_data
group by VehicleType;
select * from ride_distance_for_each_vehicle;

#3. Get the total number of cancelled rides by customers:
create view cancelled_rides_by_customer as
select count(*) from bengaluru_rides_data
where BookingStatus= 'Cancelled by Customer';
select * from cancelled_rides_by_customer;

# 4. List the top 5 customers who booked the highest number of rides
create view top_5_customers as
select CustomerID, count(BookingID) as total_rides
from bengaluru_rides_data
group by CustomerID
order by total_rides desc limit 5;
select * from top_5_customers;

# 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 CREATE VIEW Rides_cancelled_by_Drivers_P_C_Issues As
 SELECT COUNT(*) FROM bengaluru_rides_data
 WHERE ReasonforCancellingbyDriver = 'Personal & Car related issues';
 SELECT * FROM Rides_cancelled_by_Drivers_P_C_Issues;
  #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 Create View Max_Min_Driver_Rating As
 SELECT MAX(DriverRatings) as max_rating,
 MIN(DriverRatings) as min_rating
 FROM bengaluru_rides_data
 WHERE VehicleType = 'Prime Sedan';
 SELECT * FROM Max_Min_Driver_Rating;
 
  #8. Find the average customer rating per vehicle type:
 Create View AVG_Cust_Rating As
 SELECT VehicleType, AVG(CustomerRating) as avg_customer_rating
 FROM bengaluru_rides_data
 GROUP BY VehicleType;
 select * from AVG_Cust_Rating;
 
  #9. Calculate the total booking value of rides completed successfully:
 Create View total_successful_ride_value As
 SELECT SUM(BookingValue) as total_successful_ride_value
 FROM bengaluru_rides_data
 WHERE BookingStatus = 'Success';
 select * from total_successful_ride_value;
 
  #10. List all incomplete rides along with the reason:
 Create View Incomplete_Rides_Reason As
 SELECT BookingID, IncompleteRidesReason
 FROM bengaluru_rides_data
 WHERE IncompleteRides = 'Yes';
 select * from Incomplete_Rides_Reason;
 
 
 
 #1. Retrive all succesful booking
 select * from Successful_Bookings;
 
#2. Find the average ride distance for each vehicle type:
select * from ride_distance_for_each_vehicle;

#3. Get the total number of cancelled rides by customers:
select * from cancelled_rides_by_customer;

# 4. List the top 5 customers who booked the highest number of rides
select * from top_5_customers;

# 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT * FROM Rides_cancelled_by_Drivers_P_C_Issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT * FROM Max_Min_Driver_Rating;
 
  #8. Find the average customer rating per vehicle type: 
  select * from AVG_Cust_Rating;
 
  #9. Calculate the total booking value of rides completed successfully:
 select * from total_successful_ride_value;
 
  #10. List all incomplete rides along with the reason:
   select * from Incomplete_Rides_Reason;

