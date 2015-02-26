consumerKey=$(awk 'BEGIN{
	FS="=";
	print $2;
	};'
	
printf $consumerKey



{"url":"http:\/\/pocket.co\/s8Kga",
"title":"iTeaching: The New Pedagogy (How the iPad is Inspiring Better Ways of 
Teaching)",
"time":1346976937,
"consumer_key":"$consumerKey",
"access_token":"$accessToken"}

"access_token":"5678defg-5678-defg-5678-defg56"

curl --data "consumer_key=$consumerKey&redirect_uri=:"  https://getpocket.com/v3/oauth/request`
appToken=`echo $requestResponse | awk -F '=' '{print $2}'`
