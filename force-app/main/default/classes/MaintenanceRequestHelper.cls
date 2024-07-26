public with sharing class MaintenanceRequestHelper {
    
    public static void updateWorkOrders(List<Case> newList) {
        // TODO: Complete the method to update workorders
        Map<Id,Case> validCaseMap = new Map<Id,Case>();
        List<Case> caseListToInsert = new List<Case>();
        List<Case> caseListToInsert = new List<Case>();
        List<Equipment_Maintenance_Item__c> emitemsListToInsert = new List<Equipment_Maintenance_Item__c>();

        for(Case c: newList){
            if(c.Status == 'Closed' && (c.Type == 'Repair' || c.Type == 'Routine Maintenance')){
                validCaseMap.put(c.Id,c);
            }
        }


    }        
    
}