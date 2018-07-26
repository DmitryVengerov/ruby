require('HTTParty')

request_string = '[{"startDate": "2018-08-05T00:00:00", "endDate": "2018-09-05T00:00:00", "insuranceTerritories": ["eu"], "usersBirthday": ["2000-01-01T00:00:00"]}]'
body = URI.encode_www_form("requestObject" => request_string)
response = HTTParty.post("https://api.dalgaso.ru/api/v1/6s7pTPw89/offers/vzr", {
  body: body,
  headers: {
    'Content-Type' => 'application/x-www-form-urlencoded',
    'Accept' => 'application/json',
    'charset' => 'utf-8'
  }
})
json = JSON.parse(response.body)
p json
