using System;

namespace Variables
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // 4.1
            // FASE 1

            String Nombre, Apellido1, Apellido2;
            int Dia, Mes, Year;

            Nombre = "Armando";
            Apellido1 ="Bronca";
            Apellido2 = "Segura";

            Dia = 18;
            Mes = 10;
            Year = 1970;

            Console.WriteLine("Fase1\n");
            Console.WriteLine(Nombre+" "+Apellido1+" "+Apellido2);
            Console.WriteLine("Dia "+Dia+" Mes "+Mes+" Year ");
            Console.WriteLine(Nombre + "/" + Apellido1 + "/" + Apellido2);
            Console.WriteLine(Dia+"/"+Mes+"/"+Year);


            // FASE 2
            //
            // Con Bucle For

            const int Bisiesto = 1948;
            const int Traspaso = 4;
            int Resul, ComputoAños = 1, AñoFinal = 1970;


            Console.WriteLine("Fase2\n");
            Console.WriteLine("Con Buble For");
            Console.WriteLine("\nPrimer años Bisiesto "+Bisiesto+"\n");
            Console.WriteLine("Año Final "+AñoFinal+"\n");

            for (int i = Bisiesto; i<AñoFinal; i=i+Traspaso) 
            {
                Resul = i;

                Console.WriteLine("Año Bisiesto "+Resul+" n. "+ComputoAños);

                ComputoAños++;        


            }

            ComputoAños = ComputoAños - 1;

            Console.WriteLine("\nTotal de años Bisiesto "+ComputoAños);


            // FASE 3
            //

            string Datos, Fechas, YearSub, DatoYear = null;
            

            Console.WriteLine("\nFase3\n");
            Datos = Nombre + " " + Apellido1 + " "+Apellido2;
            Fechas = Dia.ToString()+"/"+Mes.ToString()+"/"+Year.ToString();

            Console.WriteLine(Datos);
            Console.WriteLine(Fechas);

            YearSub = Fechas.Substring(Fechas.Length - 4);
            

            // Console.Write("Variable AñoSub "+YearSub);

            for (int i = 1948; i < Year+4; i = i + Traspaso)
            {
                Resul = i;

                // Console.WriteLine("Año Bisiesto " + Resul + " n. " + ComputoAños);

                if (Resul == int.Parse(YearSub))
                {

                    DatoYear = "\nEl año es Bisiesto";

                }
                else
                {

                    DatoYear = "\nEl year no es Bisiesto";

                }
                           
            }

            Console.WriteLine(DatoYear);

















        }
    }
}
