@isTest
private class RestAPICalloutExample_Test{
static testMethod void testrestApiHttpGetCallout(){
  StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
  mock.setStaticResource('GetAnimalResource');
  mock.setStatusCode(200);
  mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
  Test.setMock(HTTPCalloutMock.class, mock);
  HttpResponse res = RestAPICalloutExample.restApiHttpGetCallout();
  System.assertNotEquals(null,res,'The callout returned a null response.');
  System.assertEquals(200,res.getStatusCode(),'The status code is not 200');
  System.assertEquals('application/JSON;charset=UTF-8',res.getHeader('Content-Type'),'The content type value is not exepected.');
  Map<String, Object> result1 = (Map<String, Object>)JSON.deserializeUntyped(res.getBody());
  List<Object> obj = (List<Object>)result1.get('animals');
  System.assertEquals(3,obj.size(),'Only 3 items.');
  }
}