json.extract! search, :id, :searchType, :fullTextSearch, :flightNumber, :pic, :sic, :airfield, :revenue, :memberName, :dateStart, :dateEnd, :prepMin, :prepMax, :caterMin, :caterMax, :depMin, :depMax, :flightMin, :flightMax, :arrMin, :arrMax, :maintMin, :maintMax, :catering, :maint, :createdBy, :hasComments, :created_at, :updated_at
json.url search_url(search, format: :json)
