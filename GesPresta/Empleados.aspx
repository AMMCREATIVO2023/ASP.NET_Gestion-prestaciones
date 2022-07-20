<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="GesPresta.Empleados"%>

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
                    <asp:RequiredFieldValidator ID="rqdTxtCodEmp" runat="server" ErrorMessage="Cód. Empleado obligatorio" ControlToValidate="txtCodEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regTxtCodEmp" runat="server" ErrorMessage="Introducir una letra y 5 dígitos." ControlToValidate="txtCodEmp" ForeColor="#339933" ValidationExpression="\w\d{5}"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    NIF
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtNifEmp" runat="server" Width="175px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdTxtNifEmp" runat="server" ErrorMessage="NIF obligatorio" ControlToValidate="txtNifEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regTxtNifEmp" runat="server" ErrorMessage="Introducir 8 dígitos, un guion y una letra." ControlToValidate="txtNifEmp" ForeColor="#339933" ValidationExpression="\d{8}-\w"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Apellidos y Nombre
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtNomEmp" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdTxtNomEmp" runat="server" ErrorMessage="Nombre obligatorio" ControlToValidate="txtNomEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator ID="rqdTxtTelEmp" runat="server" ErrorMessage="Telefono obligatorio" ControlToValidate="TxtTelEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Fecha de Nacimiento
                </div>
                <div class="controles">
                    <asp:TextBox ID="TxtFnaEmp" runat="server" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdTxtFnaEmp" runat="server" ErrorMessage="F. nacimiento obligatoria" ControlToValidate="TxtFnaEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmpTxtFnaEmp" runat="server" ErrorMessage="F. Ingreso debe ser mayor que F. Nacimiento" ControlToCompare="TxtFinEmp" ControlToValidate="TxtFnaEmp" ForeColor="Red" Operator="LessThan" Type="Date"></asp:CompareValidator>
                    <asp:RegularExpressionValidator ID="regTxtFnaEmp" runat="server" ErrorMessage="Introducir dd/mm/aaaa." ControlToValidate="TxtFnaEmp" ForeColor="#339933" ValidationExpression="\d\d\/\d\d\/\d\d\d\d"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Fecha de Ingreso
                </div>
                <div class="controles">
                    <asp:TextBox ID="TxtFinEmp" runat="server" Width="120px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdTxtFinEmp" runat="server" ErrorMessage="F. ingreso obligatoria" ControlToValidate="TxtFinEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regTxtFinEmp" runat="server" ErrorMessage="Introducir dd/mm/aaaa." ControlToValidate="TxtFinEmp" ForeColor="#339933" ValidationExpression="\d\d\/\d\d\/\d\d\d\d"></asp:RegularExpressionValidator>
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
                <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" />
            </div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" style="text-align: center; color: #FF0000" />
        </div>
  
   </form>
</body>
</html>
