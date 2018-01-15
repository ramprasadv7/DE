Public class Example1{
    public Integer avalue{get;set;}
    public Integer bvalue{get;set;}
    public Integer result{get;set;}
    public String operation{get;set;}
    public pageReference suba(){
    result = avalue-bvalue;
    operation = 'Substraction';
    return null;
    }
    public pageReference subb(){
    result = avalue+bvalue;
    operation = 'Addition';
    return null;
    }
    }