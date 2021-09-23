/* Fahrenheit to Celsius temperature convertor class.
Source:https://trailhead.salesforce.com/trails/force_com_dev_beginner/modules/apex_testing/units/apex_testing_intro
Author: HariKrishna */
public class TemperatureConverter{

//This method takes fahrenheit temperature and returns celcius.
public static Decimal fahrenheitToCelsius(Decimal fh){  
  Decimal cs = (fh-32)*5/9;
  return cs.setScale(2);
 }
 
}