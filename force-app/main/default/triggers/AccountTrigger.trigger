trigger AccountTrigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    
    switch on Trigger.operationType {
        when BEFORE_INSERT {
            AccountTrigger_Helper.accountMethod(Trigger.new);
        }
         when BEFORE_UPDATE {
            
        }
         when BEFORE_DELETE {
            //Yury - Disallow deletion of account that has a related case, with High priority
            AccountBeforeD_Helper.highFilter(Trigger.oldMap);
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