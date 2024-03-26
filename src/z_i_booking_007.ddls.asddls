@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view from /DMO/I_BOOKING_U'
@Metadata.allowExtensions: true
define view entity Z_I_BOOKING_007
  as select from /DMO/I_Booking_U
  association        to parent Z_I_TRAVEL_R_007 as _Travel     on $projection.TravelID = _Travel.TravelID
  association [1..1] to /DMO/I_Connection       as _Connection on $projection.ConnectionID = _Connection.ConnectionID


{
  key TravelID,
  key BookingID,
      BookingDate,
      CustomerID,
      AirlineID,
      ConnectionID,
      FlightDate,
      //      @Semantics.amount.currencyCode: 'Currency_Code'
      //      FlightPrice  as Flight_Price,
      //
      //      @Semantics.currencyCode: true
      //      CurrencyCode as Currency_Code,
      /* Associations */
      _BookSupplement,
      _Carrier,
      _Connection,
      _Customer,
      _Travel,

      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      _Connection.Distance     as Distance,

      _Connection.DistanceUnit as DistanceUnit
      //      _association_name // Make association public
}
