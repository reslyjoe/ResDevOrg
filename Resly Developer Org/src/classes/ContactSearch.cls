public class ContactSearch {
    public static List<Contact> searchForContacts (String nameLetter, String zipCode) {    
        List<Contact> contacts = 
            [SELECT Id, Name FROM Contact
             WHERE LastName LIKE :nameLetter
             	and MailingPostalCode = :zipCode
            ];
        
        return contacts;
    }
}