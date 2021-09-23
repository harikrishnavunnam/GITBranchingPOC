public class Tea {
    
    public static String orderTea(){
   /*     Set<String> teaTypes = new set<String>();
        teaTypes.add('Black');
        teaTypes.add('White');
        teaTypes.add('Herbal');
        System.debug(teaTypes); */
        
        Map<String,String> teaTypes = new Map<String,String>();
        teaTypes.put('Black','Earthy');
        teaTypes.put('White','Sweet');
        teaTypes.put('herbal','sweet');
        System.debug(teaTypes);
        String flavourprofile = teaTypes.get('herbal');
        System.debug(flavourprofile);
        return flavourprofile;
        
              
    }

}