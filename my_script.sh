#!/bin/bash
url="http://httpbin.org/status/200"
response=$(curl --write-out %{http_code} --silent --output /dev/null "$url")

if [[ "$response" =~ ^(2|3)[0-9]{2}$ ]]; then
  echo "Response code is $response. OK"
else
curl -s --user 'api:e833fca264caf6c1adcf065921d944a3-181449aa-fb5a0dfc' \
	https://api.mailgun.net/v3/sandboxbe80319ed83d4a2ab36ae43fb081abfd.mailgun.org/messages \
	-F from='Excited User <mailgun@sandboxbe80319ed83d4a2ab36ae43fb081abfd.mailgun.org>' \
	-F to=kkhutka@gmail.com \
	-F subject='Server Response' \
	-F text='Response code is not 2xx or 3xx'
 echo "Response code is $response. Error"
fi
