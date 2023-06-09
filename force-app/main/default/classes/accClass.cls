public with sharing class accClass {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(String filter) {
        String keyName = '%' + filter + '%';
        return [SELECT Id, Name, Phone FROM Account WHERE Name LIKE : keyName];
    }
}