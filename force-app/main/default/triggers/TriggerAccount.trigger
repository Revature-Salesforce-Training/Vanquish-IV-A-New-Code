trigger TriggerAccount on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    
    switch on Trigger.operationType {
        when BEFORE_INSERT {
           TriggerAccount_Helper.CreateAccounts(Trigger.new);
        }
         when BEFORE_UPDATE {
            
        }
         when BEFORE_DELETE {
            
        }
        when AFTER_INSERT {
            
        }
         when AFTER_UPDATE {
            
        }
         when AFTER_DELETE {
            
        }
         when AFTER_UNDELETE {
            
        }
    }
}