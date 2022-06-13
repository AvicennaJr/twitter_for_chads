from pydantic import BaseModel

class Post(BaseModel):
    tweet: str 
