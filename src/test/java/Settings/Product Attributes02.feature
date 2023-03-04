Feature: Product Attributes CMS API Test
Background:
	* url 'https://devproductcatalogmanagementservice.azurewebsites.net'
		* def requestPayload =
	"""
{
    "label": "karate test8",
    "variableType": "open_text",
    "name": "karate test8"
}
	"""
	
Scenario: Update a New Product Attributes
Given header Content-Type = 'application/json'
And header Accept-Encoding = 'gzip,deflate'
And header Connection = 'keep-alive'
And header User-Agent = 'PostmanRuntime/7.29.2'
And header Authorization = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ7XCJjbGllbnRJZFwiOjEsXCJlbWFpbElkXCI6XCJuaXRlc2gua0B0cmV6aS5jb21cIixcImNvb2tpZVwiOlwiand0XFx1MDAzZGV5SmhiR2NpT2lKSVV6STFOaUlzSW5SNWNDSTZJa3BYVkNKOS5leUpsYldGcGJDSTZJbTVwZEdWemFDNXJRSFJ5WlhwcExtTnZiU0lzSW1saGRDSTZNVFkyTURZek5UUTRNbjAuWHY2WkZsZWhIT0piZXNUUnQzTzJKbzVBR3QwcGZ6M2hmM2NVYkVxb0tkODsgTWF4LUFnZVxcdTAwM2Q0MzIwMDA7IFBhdGhcXHUwMDNkLzsgRXhwaXJlc1xcdTAwM2RTdW4sIDIxIEF1ZyAyMDIyIDA3OjM4OjAyIEdNVDsgZW1haWxcXHUwMDNkbml0ZXNoLmslNDB0cmV6aS5jb207IE1heC1BZ2VcXHUwMDNkNDMyMDAwOyBQYXRoXFx1MDAzZC87IEV4cGlyZXNcXHUwMDNkU3VuLCAyMSBBdWcgMjAyMiAwNzozODowMiBHTVQ7IGlzTG9nZ2VkSW5cXHUwMDNkdHJ1ZTsgTWF4LUFnZVxcdTAwM2Q0MzIwMDA7IFBhdGhcXHUwMDNkLzsgRXhwaXJlc1xcdTAwM2RTdW4sIDIxIEF1ZyAyMDIyIDA3OjM4OjAyIEdNVDsgQVJSQWZmaW5pdHlcXHUwMDNkMzNmMWE3NThmNjFlOTliZDJlOGUwNWMyMzQyM2U1OGYzNzc4YmNmYTIxMzk0NDQyMDFjN2Q4NmU4NjNhMTcxMTtQYXRoXFx1MDAzZC87SHR0cE9ubHk7U2VjdXJlO0RvbWFpblxcdTAwM2RhcHAudHJlemkuY29tOyBBUlJBZmZpbml0eVNhbWVTaXRlXFx1MDAzZDMzZjFhNzU4ZjYxZTk5YmQyZThlMDVjMjM0MjNlNThmMzc3OGJjZmEyMTM5NDQ0MjAxYzdkODZlODYzYTE3MTE7UGF0aFxcdTAwM2QvO0h0dHBPbmx5O1NhbWVTaXRlXFx1MDAzZE5vbmU7U2VjdXJlO0RvbWFpblxcdTAwM2RhcHAudHJlemkuY29tOyBcIn0iLCJleHAiOjE2NjEyNDA0MDJ9.UQO71KSEqq5XU8npSajsWSfmdBawiypso6vh-_k-Afc'

Given  path '/productcatalog/api/v1/attributes/1710'
And request requestPayload
When  method PATCH
Then  status 200
And print response


Scenario: Update a New Product Attributes without Authorization
Given header Content-Type = 'application/json'
And header Accept-Encoding = 'gzip,deflate'
And header Connection = 'keep-alive'
And header User-Agent = 'PostmanRuntime/7.29.2'


Given  path '/productcatalog/api/v1/attributes/1710'
And request requestPayload
When  method PATCH
Then  status 400
And print response