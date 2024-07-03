#!/usr/bin/python3
"""script to get total number of subscribers from a subreddit"""

import requests


def number_of_subscribers(subreddit):
    """code to get the number of subscribers in a subreddit"""

    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {
            "User-Agent": "C4Confidence/1.0.0"
            }

    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 404:
        return 0
    results = response.json().get("data")
    return results.get("subscribers")
