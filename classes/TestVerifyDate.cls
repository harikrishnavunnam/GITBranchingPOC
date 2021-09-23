@isTest
private class TestVerifyDate{

@isTest static void testcheckDates(){

Date d1 = VerifyDate.CheckDates(Date.today(),Date.today().addDays(20));
Date d2 = VerifyDate.CheckDates(Date.today(),Date.today().addDays(40));

}

}