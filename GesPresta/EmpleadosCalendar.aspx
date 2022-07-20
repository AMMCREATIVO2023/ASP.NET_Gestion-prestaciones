<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpleadosCalendar.aspx.cs" Inherits="GesPresta.EmpleadosCalendar" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<link rel="stylesheet" href="stylesemp2.css"/>
</head>
<body>
     <form id="form1" runat="server">
        <uc1:Cabecera ID="Cabecera1" runat="server" />
        <div class="datos">
            DATOS DE LOS EMPLEADOS
        </div>
        <div class="cuerpo">
            <div class="linea">
                <div class="textos">
                    Código Empleado
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtCodEmp" runat="server" Width="175px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    NIF
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtNifEmp" runat="server" Width="175px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Apellidos y Nombre
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtNomEmp" runat="server" Width="400px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Dirección
                </div>
                <div class="controles">
                    <asp:TextBox ID="TxtDirEmp" runat="server" Width="430px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Ciudad
                </div>
                <div class="controles">
                    <asp:TextBox ID="TxtCiuEmp" runat="server" Width="430px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Teléfonos
                </div>
                <div class="controles">
                    <asp:TextBox ID="TxtTelEmp" runat="server" Width="340px"></asp:TextBox>
                </div>
            </div>
           
            <div class="linea">
                <div class="textos">
                    Sexo
                </div>
                <div class="controles">
                    <asp:RadioButtonList ID="rblSexEmp" runat="server" Height="25px" RepeatDirection="Horizontal" Width="167px">
                        <asp:ListItem Selected="True" Value="H">Hombre</asp:ListItem>
                        <asp:ListItem Value="M">Mujer</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Departamento
                </div>
                <div class="controles">
                    <asp:DropDownList ID="ddlDepEmp" runat="server">
                        <asp:ListItem Selected="True">Investigación</asp:ListItem>
                        <asp:ListItem>Desarrollo</asp:ListItem>
                        <asp:ListItem>Innovación</asp:ListItem>
                        <asp:ListItem>Administración</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="calendarMain">
            <div class ="grupoFecha">
            <div class="parteIz">
                <div>
                    Fecha de Nacimiento
                </div>
                <div>
                    <asp:TextBox ID="TxtFnaEmp" runat="server" Width="90px"></asp:TextBox>
                </div>
            </div>
            <div class="parteDer">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#CDCDCD" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#9A9A9A" Height="200px" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged">
                    <DayHeaderStyle BackColor="#CDCDCD" ForeColor="Black" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="Black" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CDCDCD" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#9A9A9A" BorderColor="#CDCDCD" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="Black" Height="25px" />
                    <TodayDayStyle BackColor="#CDCDCD" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCB" />
                    </asp:Calendar>
            </div>
            
           </div>
             <div class="grupoFecha">
                 <div  class="parteIz">
                <div>
                    Fecha de Ingreso
                </div>
                <div>
                    <asp:TextBox ID="TxtFinEmp" runat="server" Width="90px"></asp:TextBox>
                </div>
                  </div>
                 <div class="parteDer">
                <asp:Calendar ID="Calendar4" runat="server" BackColor="White" BorderColor="#CDCDCD" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#9A9A9A" Height="200px" Width="220px" OnSelectionChanged="Calendar4_SelectionChanged">
                    <DayHeaderStyle BackColor="#CDCDCD" ForeColor="Black" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="Black" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CDCDCD" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#9A9A9A" BorderColor="#CDCDCD" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="Black" Height="25px" />
                    <TodayDayStyle BackColor="#CDCDCD" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCB" />
                     </asp:Calendar>
                </div>
                 
            </div>
            
                
            <div class="antigSide">
                <div class="linea">
                <div class= "controlCal">
                    Antigüedad: <br />
                </div>
                </div>
                <div class="linea">
                 <div class=" controlCal">
                    <asp:TextBox ID="TextAnyos" runat="server" Width="50px"></asp:TextBox>
                </div>
                <div class="textCal">
                    Años
                </div>
                </div>
                <div class="linea">
                <div class=" controlCal">
                    <asp:TextBox ID="TextMeses" runat="server" Width="50px"></asp:TextBox>
                </div>
                <div class="textCal">
                    Meses
                </div>
                </div>
                <div class="linea">
                <div class=" controlCal">
                    <asp:TextBox ID="TextDias" runat="server" Width="50px"></asp:TextBox>
                </div>
                <div class="textCal">
                    Dias
                </div>
                </div>
            </div>
            
                </div>
        </div>
            <div class="boton">
                <br />
                <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click" />
            </div>
    
         
   </form>
        <div id="resultado">
         <asp:Label ID="lblValores" runat="server" Width="60%" BackColor="#66FFFF" Visible="False"></asp:Label>
        </div>
    <div class="resultadoError">
                    <asp:Label ID="lblError1" runat="server"  BackColor="#EA2736" Visible="False"></asp:Label>
                 </div>
            <div class="resultadoError">
                    <asp:Label ID="lblError2" runat="server"  BackColor="#EA2736" Visible="False"></asp:Label>
                 </div>
</body>
</html>
