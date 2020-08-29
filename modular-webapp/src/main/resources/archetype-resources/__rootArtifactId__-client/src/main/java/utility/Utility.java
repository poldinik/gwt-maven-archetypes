package ${package}.utility;

public class Utility {
    public static void print(Object o){
        Console.log(o);
    }

    public static String generateUuid(){
        return UUID.get();
    }
}