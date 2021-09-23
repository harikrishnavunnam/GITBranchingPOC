/* Test class for TaskUtil class
Author: Harikrishna */
@isTest
private class TaskUtilTest{
 
 @isTest static void testTaskPriority(){
 String priority = TaskUtil.getTaskPriority('NY');
 System.assertEquals('Normal',priority);
 }
 
 @isTest static void testHighTaskPriority(){
 String priority = TaskUtil.getTaskPriority('CA');
 System.assertEquals('High',priority); 
 }
 
 @isTest static void testNullTaskPriority(){
 String priority = TaskUtil.getTaskPriority('CALIFO');
 System.assertEquals(null,priority); 
 }
 
}