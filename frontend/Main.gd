extends Control

var tweet_content

func _on_Tweet_pressed():
	
	var tweet = {
		"tweet": tweet_content
	}
	var query = JSON.print(tweet)
	var headers = ["Content-Type: application/json"]
	
	$HTTPRequest.request("http://localhost:8000/tweet", headers, false, HTTPClient.METHOD_POST, query)

func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
