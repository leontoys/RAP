@EndUserText.label: 'Travel data'
    @AccessControl.authorizationCheck: #CHECK
    @Search.searchable: true

    @Metadata.allowExtensions: true
define root view entity ZC_RAP_Travel_U_LSV
      as projection on ZI_RAP_Travel_U_LSV
    {
      //ZI_RAP_TRAVEL_U_LSV
      key TravelID,
          @Consumption.valueHelpDefinition: [ { entity: { name: '/DMO/I_Agency', element: 'AgencyID' } } ]
          @Search.defaultSearchElement: true
          AgencyID,
          @Consumption.valueHelpDefinition: [ { entity: { name: '/DMO/I_Customer', element: 'CustomerID' } } ]
          @Search.defaultSearchElement: true
          CustomerID,
          BeginDate,
          EndDate,
          @Semantics.amount.currencyCode: 'CurrencyCode'
          BookingFee,
          @Semantics.amount.currencyCode: 'CurrencyCode'
          TotalPrice,
          @Consumption.valueHelpDefinition: [ { entity: { name: 'I_Currency', element: 'Currency' } } ]
          CurrencyCode,
          Description,
          Status,
          Createdby,
          Createdat,
          Lastchangedby,
          Lastchangedat,

          /* Associations */
          //ZI_RAP_TRAVEL_U_LSV
          _Agency,
          _Booking : redirected to composition child ZC_RAP_Booking_U_LSV,
          _Currency,
          _Customer
    }
