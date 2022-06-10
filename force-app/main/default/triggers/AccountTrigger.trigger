trigger AccountTrigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    
    switch on Trigger.operationType {
        when BEFORE_INSERT {
            //Kathryn Olsen
            AccountTrigger_Helper.accountMethod(Trigger.new);
        }
         when BEFORE_UPDATE {
            
        }
         when BEFORE_DELETE {
             /*
             * Name of the file: AccountTrigger
             * Name: Yury Pushkarev
             * Created date: 06/03/22
             * Last modified date: 06/09/22
             * Overview: Disallow deletion of account that has a related case, with High priority
             */
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