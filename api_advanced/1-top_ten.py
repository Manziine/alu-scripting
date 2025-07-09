#!/usr/bin/python3
"""Queries the Reddit API and prints the titles of the first 10 hot posts for a subreddit"""
import requests

def top_ten(subreddit):
    url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    headers = {"User-Agent": "alu-api-script"}
    params = {"limit": 10}

    try:
        response = requests.get(url, headers=headers, params=params, allow_redirects=False)
        if response.status_code != 200:
            print(None)
            return
        data = response.json().get("data", {}).get("children", [])
        for post in data:
            print(post["data"]["title"])
    except Exception:
        print(None)
