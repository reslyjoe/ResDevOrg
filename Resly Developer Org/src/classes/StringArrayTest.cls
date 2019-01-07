public class StringArrayTest {
    public static List<String> generateStringArray (Integer count){
        List<String> myStringList = new List<String>();
        
        for(Integer i=0;i<count;i++){
            myStringList.add('Test '+i);
        }
        
        return myStringList;
        }
}