public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String querystring){
        List<List<SObject>> searchList = [FIND :querystring IN NAME FIELDS RETURNING CONTACT(FirstName, LastName),LEAD(FirstName,LastName)];
        
        return searchList;
    }
}