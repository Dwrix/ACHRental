using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ACHRental.Clases;
namespace ACHRental.Controller
{
    public class MaquinariaController
    {
        private static List<Maquinaria> listaMaquina = new List<Maquinaria>();

        //Método registro 
        public static string addMaquinas(string id, string nombre, string marca, string modelo, string presio, string descripcion)
        {
            try
            {

                Maquinaria maquinaria = new Maquinaria()
                {
                    Id=id,
                    Nombre=nombre,
                    Marca=marca,
                    Modelo=modelo,
                    Precio=presio,
                    Descripcion = descripcion
                };

                listaMaquina.Add(maquinaria);
                return "Se agrego correctamente";
            }
            catch (Exception e)
            {
                return "Error: " + e.Message;
            }
        }


        //Método listar
        public static List<Maquinaria> getAll()
        {
            return listaMaquina;
        }

        //Método de búsqueda 
        public static Maquinaria findSugerencia(string id)
        {

            foreach (Maquinaria maquinaria in listaMaquina)
            {
                if (maquinaria.Id == id)
                {
                    return maquinaria;
                }
            }
            return null;
        }

        //Editar
        public static string editMaquinaria(string id, string presio, string descripcion)
        {

            try
            {

                Maquinaria maquinaria = findSugerencia(id);
                if (maquinaria != null)
                {
                    maquinaria.Precio = presio;
                   maquinaria.Descripcion=descripcion;


                    return "  Modificado con Éxito.";
                }
                else
                {
                    return "No existe";
                }
            }
            catch (Exception e)
            {

                return "Error: " + e.Message;
            }



        }

        //Método de eliminación de paciente.

        public static string removeMaquinaria(string id)
        {
            Maquinaria maquinaria = findSugerencia(id);

            if (maquinaria!= null)
            {
                listaMaquina.Remove(maquinaria);
                 return "Removido";


            }
            else
            {
                return "No Existe";


            }

        }







    }
}