CREATE TABLE "Users" (
  "UserID" int PRIMARY KEY,
  "FirstName" varchar,
  "LastName" varchar,
  "PhoneNumber" varchar,
  "Email" varchar,
  "Password" varchar,
  "UserRole" int,
  "RegistrationDate" datetime
);

CREATE TABLE "Addresses" (
  "AddressID" int PRIMARY KEY,
  "UserID" int,
  "Address" varchar,
  "City" varchar,
  "PrimaryAddress" bool,
  "Country" varchar,
  "AddressType" varchar
);

CREATE TABLE "Partners" (
  "PartnerID" int PRIMARY KEY,
  "UserID" int,
  "PartnerType" varchar,
  "Name" varchar,
  "Location" varchar,
  "PhoneNumber" varchar,
  "OpeningHours" varchar
);

CREATE TABLE "Restaurants" (
  "RestaurantID" int,
  "PartnerID" int,
  "Category" varchar,
  "Available" boolean,
  "MenuID" int,
  PRIMARY KEY ("RestaurantID", "MenuID")
);

CREATE TABLE "Menus" (
  "MenuID" int PRIMARY KEY,
  "ItemName" varchar,
  "MenuPic" varchar,
  "Price" decimal,
  "Description" varchar,
  "Availability" boolean,
  "RestaurantID" int
);

CREATE TABLE "Orders" (
  "OrderID" int PRIMARY KEY,
  "UserID" int,
  "PartnerID" int,
  "DriverID" int,
  "OrderStatus" varchar,
  "TotalAmount" decimal,
  "DeliveryFee" decimal,
  "OrderDate" datetime,
  "DeliveryAddress" varchar,
  "PaymentStatus" varchar
);

CREATE TABLE "Drivers" (
  "DriverID" int PRIMARY KEY,
  "UserID" int,
  "Name" varchar,
  "PhoneNumber" varchar,
  "VehicleType" varchar,
  "LicenseNumber" varchar,
  "AvailabilityStatus" boolean,
  "TotalEarnings" decimal,
  "TotalExpenses" decimal,
  "DriverType" int
);

CREATE TABLE "RideRequests" (
  "RideID" int PRIMARY KEY,
  "UserID" int,
  "DriverID" int,
  "PickupLocation" varchar,
  "DropoffLocation" varchar,
  "RideStatus" varchar,
  "Fare" decimal,
  "RequestDate" datetime
);

CREATE TABLE "Payments" (
  "PaymentID" int PRIMARY KEY,
  "OrderID" int,
  "UserID" int,
  "Amount" decimal,
  "PaymentMethod" varchar,
  "PaymentDate" datetime,
  "Status" varchar
);

CREATE TABLE "Reviews" (
  "ReviewID" int PRIMARY KEY,
  "UserID" int,
  "PartnerID" int,
  "Rating" int,
  "Comment" varchar,
  "ReviewDate" datetime
);

CREATE TABLE "PartnerOrders" (
  "OrderID" int PRIMARY KEY,
  "PartnerID" int,
  "TotalAmount" decimal,
  "OrderDate" datetime
);

CREATE TABLE "DriverOrderHistory" (
  "DriverID" int,
  "OrderID" int,
  "OrderDate" datetime,
  "TotalAmount" decimal,
  "DeliveryFee" decimal,
  "Status" varchar
);

CREATE TABLE "PartnerOrderHistory" (
  "PartnerID" int,
  "OrderID" int,
  "TotalAmount" decimal,
  "OrderDate" datetime
);
