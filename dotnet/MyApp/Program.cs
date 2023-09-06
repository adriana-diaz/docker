using System;

namespace MyApp
{
    class Program
    {
        static void Main(string[] args)
        {
            String nombre = "World";
            if (args.Length > 0){
                nombre = args[0];
            }

            Console.WriteLine(String.Format("Hola :) {0}, bienvenido!", nombre));
        }
    }
}
