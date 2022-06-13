from fastapi import FastAPI
import schemas, tweet_main


app = FastAPI()

@app.get("/")
def root():
    return {"message": "Root dir of Tweet App"}

@app.post("/tweet")
def send_tweet(tweet: schemas.Post):
    return tweet_main.send_a_tweet(tweet.tweet)
    
