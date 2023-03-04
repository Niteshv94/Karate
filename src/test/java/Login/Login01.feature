Feature: Sample CMS Login API Test

Background:
 * url 'https://devproductcatalogmanagementservice.azurewebsites.net' 



Scenario: Test a Sample GET API with Authorization
Given header Content-Type = 'application/json'
And header Accept-Encoding = 'gzip,deflate'
And header Connection = 'keep-alive'
And header User-Agent = 'PostmanRuntime/7.29.2'

Given  path '/productcatalog/api/v1/auth/sign_in'
And form field email = 'nitesh.k@trezi.com'
And form field password = 'Niteshvats@94'
When  method POST
Then  status 200
And print response

