public with sharing class ContactController{

@AuraEnabled
 Public Static List<Contact> getContacts() { 
  List<Contact> contacts = [Select ID, Name, MailingStreet, Phone, Email, LeadSource FROM Contact];
  return contacts;
 }
}