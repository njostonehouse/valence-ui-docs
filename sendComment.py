import urllib
import urllib2
import os
import sys
import json

repo_slug = os.environ['TRAVIS_REPO_SLUG']
commit_sha = os.environ['COMMIT_SHA']
token = os.environ['GITHUB_TOKEN']
userAgent = 'peanut-gallery'
githubUrl = 'https://api.github.com/repos/' + repo_slug + '/commits/' + commit_sha + '/comments'

headers = {'Authorization': 'token ' + token, 'User-Agent' : userAgent}
value = sys.argv[1]
data = json.dumps( {"body": value } )

request = urllib2.Request(githubUrl, data, headers)
content = urllib2.urlopen(request).read()
print content