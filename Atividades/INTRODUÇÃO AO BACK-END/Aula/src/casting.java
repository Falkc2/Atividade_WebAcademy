public class casting {
    public static void main(String[] args) throws Exception {

        char a ='a';
        int b ='b';
        float c = 100;

        System.out.println(a);
        System.out.println(b);
        System.out.println(c);

        int d = (int) 5.9987;
        float e = (float) 5.0;
        int f = (char) (a + 5);
        int g = (char) 110.5;

        System.out.println(d);
        System.out.println(e);
        System.out.println(f);
        System.out.println(g);


    }
}


