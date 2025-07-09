#!/usr/bin/python3
"""
1-top_ten: Queries the Reddit API and prints titles of the first 10 hot posts
for a given subreddit.
"""

import requests


def top_ten(subreddit):
    """
    Prints the titles of the first 10 hot posts listed for a subreddit.
    If subreddit is invalid, prints None.
    """
    url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    headers = {"User-Agent": "alu-scripting-agent"}
    params = {"limit": 10}

    try:
        response = requests.get(
            url,
            headers=headers,
            params=params,
            allow_redirects=False
        )

        if response.status_code != 200:
            print(None)
            return

        posts = response.json().get("data", {}).get("children", [])
        for post in posts:
            title = post.get("data", {}).get("title")
            print(title)

    except Exception:
        print(None)
