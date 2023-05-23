public class ContactRest {
    //Example 1: Salesforce'dan Salesforce sistemine GET methodu ile Contact bilgisi cekiniz. 
    public static void getContacts(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://lwccom-d3-dev-ed.develop.my.salesforce.com/services/apexrest/contact/?contactId=003Dn00000GthAyIAJ');
        request.setMethod('GET');
        request.setHeader('Authorization', 'Bearer 00DDn000007qg2f!AQcAQCxrqrbwqS1RVQGuqiGnhG2iyrpSW0ucBI8fRHhAmIl.dtXtd5ZZ9cQjfoJYUeAWPPwaWslfpUQ_VCnBuleVW1rIAgPx');
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode()==200){
            Contact con = (Contact) JSON.deserialize(response.getBody(), Contact.class);
            System.debug(con);//Contact:{Email=gandhi_sanjay_dds@kilback.com, Id=003Dn00000GthAyIAJ, Name=Sanjay Gandhi DDS}
        }else{
            System.debug('Error: '+response.getStatusCode()+response.getStatus());
        }
    }
    //Example 2: Salesforce'dan Salesforce sistemine POST methodu ile Contact bilgisi gonderiniz.. 
        public static void postContacts(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://lwccom-d3-dev-ed.develop.my.salesforce.com/services/apexrest/contact/');
        request.setMethod('POST');
        request.setHeader('Authorization', 'Bearer 00DDn000007qg2f!AQcAQCxrqrbwqS1RVQGuqiGnhG2iyrpSW0ucBI8fRHhAmIl.dtXtd5ZZ9cQjfoJYUeAWPPwaWslfpUQ_VCnBuleVW1rIAgPx');
        request.setHeader('Content-Type', 'application/json');
        request.setBody('{"newContact":{"LastName":"Kent","FirstName":"Clark","Email":"clark2@biz.com","Phone":"234565432"}}');
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode()==200){
            Contact con = (Contact) JSON.deserialize(response.getBody(), Contact.class);
            System.debug(con);//Contact:{Email=clark2@biz.com, FirstName=Clark, Phone=234565432, LastName=Kent, Id=003Dn00000GtjJ3IAJ}
        }else{
            System.debug('Error: '+response.getStatusCode()+response.getStatus());
        }
    }
}