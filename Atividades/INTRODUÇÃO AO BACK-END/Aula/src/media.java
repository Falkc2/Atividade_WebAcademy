import java.util.Scanner;


public class media {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        String situacao;
        float nota1 = sc.nextFloat();
        float nota2 = sc.nextFloat();
        float media = (nota1 + nota2) /2;

        if (media >= 7) {
            situacao = "Aprovado";
        } 
        else if (media > 5 && media < 7) {
            situacao = "Recuperação";
        } 
        else {
            situacao = "Reprovado";
        }

        System.out.println(situacao + " Com média " + media);

    }

}