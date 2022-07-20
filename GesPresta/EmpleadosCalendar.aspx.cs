using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GesPresta
{
    public partial class EmpleadosCalendar : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            txtCodEmp.Focus(); // Sitúa el foco en el elemento Código Empleado
        }



        protected void cmdEnviar_Click(object sender, EventArgs e)
        {
            lblValores.Visible = true;
            lblValores.Text = "VALORES DEL FORMULARIO" +
            "<br/> Código Empleado: " + txtCodEmp.Text +
            "<br/> NIF: " + txtNifEmp.Text +
            "<br/> Apellidos y Nombre: " + txtNomEmp.Text +
            "<br/> Dirección: " + TxtDirEmp.Text +
            "<br/> Ciudad: " + TxtCiuEmp.Text +
            "<br/> Teléfonos: " + TxtTelEmp.Text +
            "<br/> Fecha de Nacimiento: " + TxtFnaEmp.Text +
            "<br/> Fecha de Incorporación: " + TxtFinEmp.Text +
            "<br/> Sexo: " + rblSexEmp.SelectedItem.Value +
            "<br/> Departamento: " + ddlDepEmp.Text;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            
            DateTime FechaNac = Calendar1.SelectedDate;
            TxtFnaEmp.Text = FechaNac.ToString("dd/MM/yyyy");
        }

        protected void Calendar4_SelectionChanged(object sender, EventArgs e)
        {
            DateTime FechaNac = Calendar1.SelectedDate;
            DateTime FechaIn = Calendar4.SelectedDate;
            DateTime dtHoy = DateTime.Now;
            TimeSpan diferencia = dtHoy - Calendar4.SelectedDate;
            DateTime fechamin = new DateTime(1, 1, 1);
            TxtFinEmp.Text = FechaIn.ToString("dd/MM/yyyy");
            TxtFnaEmp.Text = FechaNac.ToString("dd/MM/yyyy");

            if ((FechaIn > FechaNac) && (FechaIn < dtHoy))
            {
                lblError1.Visible = false;
                lblError2.Visible = false;
                TxtFinEmp.Text = FechaIn.ToString("dd/MM/yyyy");
                TextAnyos.Text = ((fechamin + diferencia).Year - 1).ToString();
                TextMeses.Text = ((fechamin + diferencia).Month - 1).ToString();
                TextDias.Text = ((fechamin + diferencia).Day).ToString();
            }
            else if (FechaIn < FechaNac)
            {
                lblError1.Visible = true;
                lblError2.Visible = false;
                lblError1.Text = "FECHA INCORRECTA: F. Inicio inferior a F. Nacimiento";
                TxtFinEmp.Text = "";
                TextAnyos.Text = "";
                TextMeses.Text = "";
                TextDias.Text = "";
            }else if (FechaIn > dtHoy)
            {
                lblError2.Visible = true;
                lblError1.Visible = false;
                lblError2.Text = "FECHA INCORRECTA: F. Inicio mayor que F. Actual";
                TxtFinEmp.Text = "";
                TextAnyos.Text = "";
                TextMeses.Text = "";
                TextDias.Text = "";
            }


        }
    }
}