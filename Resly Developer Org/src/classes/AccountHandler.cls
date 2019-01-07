public class AccountHandler {
    public static Account insertNewAccount(String acctname){
        try {
            Account a = new Account(Name=acctname);
            insert a;
        	return a;
        }
        catch(DMLException e){
            System.debug('A DML exception has occurred ' + e.getMessage());
            return null;
        }
        
    }
}