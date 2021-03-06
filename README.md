# Content Crawler

Content Crawler is website which allow user to see inner html content which resides in various html tags.

As of now we are fetching and storing following html tags information:

 *h1
 *h2
 *h3
 *a links

## API End Point 1 (enter any website URL)

### Request:

```bash
curl -i -H "Accept: application/vnd.api+json" -H 'Content-Type:application/vnd.api+json' -X POST -d '{"data": {"type":"website-urls", "attributes":{"url":"https://www.facebook.com"}}}' http://localhost:3000/website-urls
```

### Response:

```
HTTP/1.1 201 Created 
X-Frame-Options: SAMEORIGIN
X-Xss-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/vnd.api+json
Location: http://localhost:3000/website-urls/16
Etag: W/"f7c5272d697718ac9e3f554225b503a5"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 7b12da47-72e6-4ce2-98e1-236f7b55276f
X-Runtime: 3.772258
Server: WEBrick/1.3.1 (Ruby/2.3.3/2016-11-21)
Date: Tue, 15 May 2018 20:32:36 GMT
Content-Length: 326
Connection: Keep-Alive

{"data":{"id":"16","type":"website-urls","links":{"self":"http://localhost:3000/website-urls/16"},"attributes":{"url":"https://www.facebook.com"},"relationships":{"website-url":{"links":{"self":"http://localhost:3000/website-urls/16/relationships/website-url","related":"http://localhost:3000/website-urls/16/website-url"}}}}}
```

#### Note: url is required field here. 

## API End Point 2 (for showing previously stored urls and information)

### Request: 

```bash
curl -i -H "Accept: application/vnd.api+json" "http://localhost:3000/website-contents"
```

### Response: 

```
HTTP/1.1 200 OK 
X-Frame-Options: SAMEORIGIN
X-Xss-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/vnd.api+json
Etag: W/"7f8b6d1fa5d6d2e3dda6477718747c3b"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 314b31b8-ffe9-4cc4-9d57-b93e0cf4a3ca
X-Runtime: 0.011168
Server: WEBrick/1.3.1 (Ruby/2.3.3/2016-11-21)
Date: Tue, 15 May 2018 20:39:51 GMT
Content-Length: 1001
Connection: Keep-Alive

{"data":[{"id":"15","type":"website-contents","links":{"self":"http://localhost:3000/website-contents/15"},"attributes":{"header1":"Facebook","header2":"JavaScript is disabled in your browser.Security check","header3":"","a-hyperlink":"Sections of this pageAccessibility helpFacebookForgotten account?Why do I need to provide my date of birth?TermsData PolicyCookie PolicyBackCreate a Pageગુજરાતીहिन्दीमराठीاردوਪੰਜਾਬੀதமிழ்తెలుగుবাংলাമലയാളംEspañolSign UpLog InMessengerFacebook LiteMobileFind FriendsPeoplePagesPlacesGamesLocationsMarketplaceGroupsRecipesSportsLookMomentsInstagramLocalAboutCreate adCreate PageDevelopersCareersPrivacyCookiesAdChoicesTermsHelpSettingsActivity log","url":"https://www.facebook.com"},"relationships":{"website-url":{"links":{"self":"http://localhost:3000/website-contents/15/relationships/website-url","related":"http://localhost:3000/website-contents/15/website-url"}}}}]}
```
