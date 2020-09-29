#!/bin/bash

cd ../tracking || exit 1

w3m -dump -cols 220 -o display_charset=UTF-8  https://www.hackerrank.com/environment/languages > prog_languages_hackerrank.txt


# hotjar dumping isn't working as below (commented)
#w3m -dump -cols 220 -o display_charset=UTF-8  https://hotjar.atlassian.net/wiki/spaces/REC/pages/158105691/Our+Perks > hotjar_perks.txt
curl 'https://hotjar.atlassian.net/cgraphql?q=QueryPreloader_ContentQuery' \
  -H 'authority: hotjar.atlassian.net' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36' \
  -H 'x-atl-experience: view-page' \
  -H 'x-apollo-operation-name: ContentQuery' \
  -H 'content-type: application/json' \
  -H 'accept: */*' \
  -H 'origin: https://hotjar.atlassian.net' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://hotjar.atlassian.net/wiki/spaces/REC/pages/158105691/Our+Perks' \
  -H 'accept-language: en-US,en;q=0.9,nl;q=0.8,uk;q=0.7' \
  -H 'cookie: cloud.session.token=eyJraWQiOiJzZXNzaW9uLXNlcnZpY2VcL3Byb2QtMTU5Mjg1ODM5NCIsImFsZyI6IlJTMjU2In0.eyJhc3NvY2lhdGlvbnMiOltdLCJzdWIiOiI1NTcwNTg6YTAzNGNlMDgtNzYxNC00OTJhLWI5Y2YtZDEzNDdjM2JmOWIwIiwiZW1haWxEb21haW4iOiJnbWFpbC5jb20iLCJpbXBlcnNvbmF0aW9uIjpbXSwiY3JlYXRlZCI6MTYwMDQ1NjMyNywicmVmcmVzaFRpbWVvdXQiOjE2MDEzNjUzNjYsInZlcmlmaWVkIjp0cnVlLCJpc3MiOiJzZXNzaW9uLXNlcnZpY2UiLCJzZXNzaW9uSWQiOiI3NDY0MThiZS0zYTMxLTQxYjItYjdkMC1jMjk2ZGI0ODBkMzAiLCJhdWQiOiJhdGxhc3NpYW4iLCJuYmYiOjE2MDEzNjQ3NjYsImV4cCI6MTYwMzk1Njc2NiwiaWF0IjoxNjAxMzY0NzY2LCJlbWFpbCI6ImRtaXRyby5nb3JidW5vdkBnbWFpbC5jb20iLCJqdGkiOiI3NDY0MThiZS0zYTMxLTQxYjItYjdkMC1jMjk2ZGI0ODBkMzAifQ.KedYPf5RJIwGixbbGGj810Fu9F-s45SAcv-PXpgqtOoTqapYdXEThlkmu8PmeBKOsNHtsaSb9O5yXXDSplZ3M566J4Mtnte-OqshMw3NOjpxvBYhVsdW_4FRSSe0l3x6NFJV-9dbrrduo-VjVTVlVambVFbk5nC0DRO-aTVNbqCGUYFWFyAChh6FXsIgh3-EsoxOQTcyvEVNEJeOj8jFr_evcMTeXFdKlxfw5aMA0rIGFnNrcWRCKGb8lMwMZp4kXM8LM75cLuGa6OVjQnrVrcd4e6FIfH3PEKUL28OKT1mzt3Xz-nMkPIIWFC4EPpzax-97GUSV-mD61fzAzOnn8Q; ajs_group_id=null; ajs_anonymous_id=%22ac20481a-0e1c-4c56-a238-78fb4ae6be85%22' \
  --data-binary '{"query":"query ContentQuery($contentId:ID$versionOverride:Int$embeddedContentRender:String)@SLA{content(id:$contentId version:$versionOverride embeddedContentRender:$embeddedContentRender){__typename nodes{__typename id type space{__typename id key}metadata{__typename lastModifiedDate frontend{__typename spaFriendly}}body{__typename dynamic{__typename representation value webresource{__typename tags{__typename css}uris{__typename js css}}}}...contentAppearancePublishedFragment}}}fragment contentAppearancePublishedFragment on Content{__typename appearancePublished:properties(key:\"content-appearance-published\"){__typename ...contentAppearanceInnerFragment}}fragment contentAppearanceInnerFragment on PaginatedJsonContentPropertyList{__typename nodes{__typename id key value version{__typename number}}}","variables":{"contentId":"158105691","versionOverride":null,"embeddedContentRender":null}}' \
  > hotjar_perks.json
