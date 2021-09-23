/* Test Class for TemperatureConverter class.
Author: HariKrishna */
@isTest
private class TemperatureConverterTest{

 @isTest static void testWarmTemperature()
 {
  Decimal cel = TemperatureConverter.fahrenheitToCelsius(75);
  system.assertEquals(23.89,cel);
  system.assertNotEquals(33,cel);
 }
 
 @isTest static void testFreezTemp()
 {
  Decimal cel = TemperatureConverter.fahrenheitToCelsius(32);
  System.assertEquals(0,cel);
  system.assertNotEquals(33,cel);
 }
 
 @isTest static void testBoilingTemp()
 {
  Decimal cel = TemperatureConverter.fahrenheitTocelsius(212);
  System.assertEquals(100,cel);
  system.assertNotEquals(33,cel);
 }
 
 @isTest static void testnegativeTemp()
 {
  Decimal cel = TemperatureConverter.fahrenheitTocelsius(-15);
  System.assertEquals(-26.11,cel);
  system.assertNotEquals(33,cel);
 } 
 
}