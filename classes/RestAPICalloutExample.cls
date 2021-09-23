public Class RestAPICalloutExample{
public static HttpResponse restApiHttpGetCallout(){
  Http ht = New Http();
  HttpRequest hreq = new HttpRequest();
  hreq.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
  hreq.setMethod('GET');
  HttpResponse hres = ht.send(hreq);
  if(hres.getStatusCode() == 200)
  {
  Map<String, Object> result = (Map<String, Object>)JSON.deserializeUntyped(hres.getBody());
  List<Object> listObj = (List<Object>)result.get('animals'); 
  System.debug('Below are the list of animals retrived');
  for(Object Obj : listObj)
   {
    System.debug(Obj);
   }
  }
  return hres;
 }
 
 public static HttpResponse restApiHttpPostCallout(){
  Http htt = new Http();
  HttpRequest hreq1 = new HttpRequest();
  hreq1.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
  hreq1.setMethod('POST');
  hreq1.setHeader('Content-Type', 'application/json;charset=UTF-8');
  hreq1.setBody('{"name":"mighty moose"}');
  HttpResponse hres1 = htt.send(hreq1);
  if(hres1.getStatusCode() != 201)
  {
   System.debug('Unexpected status code:' + hres1.getStatusCode() + ' ' +hres1.getStatus());
  }
  else{
       System.debug(hres1.getBody());
      }
     return hres1;
 }
 
}