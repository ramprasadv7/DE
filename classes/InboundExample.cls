public class InboundExample implements Messaging.InboundEmailHandler {
    public Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email,Messaging.InboundEnvelope env){
        Messaging.InboundEmailResult result=new Messaging.InboundEmailResult();
        try{
            Lead mylead=new Lead();
            mylead.lastName=email.fromName;
            mylead.Email=email.fromAddress;
            mylead.Company='CapitalInfo';
            mylead.Status='open- not contacted';
            mylead.title=email.subject;
            mylead.LeadSource='Email';
            mylead.Description=email.plainTextBody;
            insert mylead;
            result.success=true;
        }catch(Exception e){
            result.success=false;
        }
        return result;
    }
}