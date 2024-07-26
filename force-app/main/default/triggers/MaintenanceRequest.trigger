trigger MaintenanceRequest on Case (before update, after update) {
    // ToDo: Call MaintenanceRequestHelper.updateWorkOrders

    if(Trigger.isAfter){
        if(Trigger.isUpdate){
            MaintenanceRequestHelper.updateWorkOrders(Trigger.new);
        }
    }
}