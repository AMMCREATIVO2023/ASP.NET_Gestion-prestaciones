<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados1.aspx.cs" Inherits="GesPresta.Empleados1" %>

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
                    Fecha de Nacimiento
                </div>
                <div class="controles">
                    <asp:TextBox ID="TxtFnaEmp" runat="server" Width="120px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Fecha de Ingreso
                </div>
                <div class="controles">
                    <asp:TextBox ID="TxtFinEmp" runat="server" Width="120px"></asp:TextBox>
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
            <div class="final">
            </div>
            <div class="boton">
                <br />
                <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click" />
            </div>
        </div>
         
   </form>
        <div id="resultado">
         <asp:Label ID="lblValores" runat="server" Width="60%" BackColor="#66FFFF" Visible="False"></asp:Label>
        </div>
</body>
</html>
