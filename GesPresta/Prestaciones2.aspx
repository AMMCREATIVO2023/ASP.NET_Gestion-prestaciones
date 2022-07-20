<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones2.aspx.cs" Inherits="GesPresta.Prestaciones2" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<%@ Register src="prestacionesBuscar.ascx" tagname="prestacionesBuscar" tagprefix="uc2" %>

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
            DATOS DE LAS PRESTACIONES
        </div>
        <div class="cuerpo cuerpoBuscar">
            <div class="formularioBuscar">
            <div class="lineaPres">
                <div class="textosPres">
                    Código Prestación
                </div>
                
                <div class="controlesBuscar">
                    <asp:TextBox ID="txtCodPre" runat="server" Width="175px"></asp:TextBox>
                </div>
                    <div class="botonVerPres">
                    <asp:Button ID="btnVerPrestaciones" runat="server" Text="Ver prestaciones" CausesValidation="False" style="margin-left: 10px" OnClick="btnVerPrestaciones_Click" />
                    </div>
                    <div class="msn">
                    <asp:RequiredFieldValidator ID="rqdtxtCodPre" runat="server" ErrorMessage="Código obligatorio" ControlToValidate="txtCodPre" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regtxtCodPre" runat="server" ErrorMessage="Introducir 3 dígitos, guión, 3 dígitos, guion y 3 dígitos." ControlToValidate="txtCodPre" ForeColor="#339933" ValidationExpression="\d{3}-\d{3}-\d{3}"></asp:RegularExpressionValidator>
                    </div>
            </div>
            <div class="lineaPres">
                <div class="textosPres">
                    Descripción
                </div>
                <div class="controlesBuscar">
                    <asp:TextBox ID="txtDesPre" runat="server" Width="614px" style="margin-left: 0px"></asp:TextBox>
                </div>
            </div>
            <div class="lineaPres">
                <div class="textosPres">
                    Importe Fijo
                </div>
                <div class="controlesBuscar">
                    <asp:TextBox ID="txtImpPre" runat="server" Width="175px"></asp:TextBox>
                </div>
                    <div class="msn">
                    <asp:RequiredFieldValidator ID="rqdTxtImpPre" runat="server" ErrorMessage="Importe fijo obligatorio" ControlToValidate="txtImpPre" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rngTxtImpPre" runat="server" ErrorMessage="Valor válido entre el 0,00 y el 500,00" ControlToValidate="txtImpPre" ForeColor="Red" MaximumValue="500,00" MinimumValue="0,00" Type="Double"></asp:RangeValidator>
                    </div>
                    
            </div>
            <div class="lineaPres">
                <div class="textosPres">
                    Porcentaje del Importe
                </div>
                <div class="controlesBuscar">
                    <asp:TextBox ID="texPorPre" runat="server" Width="175px"></asp:TextBox>
                </div>
                    <div class="msn">
                         <asp:RequiredFieldValidator ID="rqdtexPorPre" runat="server" ErrorMessage="Porcentaje del importe obligatorio" ControlToValidate="texPorPre" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rngtexPorPre" runat="server" ErrorMessage="Valor válido entre el 0,00 y el 15,00 %" ControlToValidate="texPorPre" ForeColor="Red" MaximumValue="15,00" MinimumValue="0,00" Type="Double"></asp:RangeValidator>
                    </div>
                   
            </div>
            <div class="lineaPres">
                <div class="textosPres">
                    Tipo de Prestación
                </div>
                <div class="controlesBuscar">
                    <asp:DropDownList ID="ddlDepEmp" runat="server">
                        <asp:ListItem>Dentaria</asp:ListItem>
                        <asp:ListItem>Familiar</asp:ListItem>
                        <asp:ListItem Selected="True">Ocular</asp:ListItem>
                        <asp:ListItem>Otras</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
                </div>
            <div class="final presBuscar">
                <div>
                <uc2:prestacionesBuscar ID="prestacionesBuscar1" runat="server" Visible="False" />
                </div>
                <div>
                <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar" CausesValidation="False" Visible="False" OnClick="btnSeleccionar_Click" />
                </div>
            </div>
        </div>
        
        <div style="clear: both"></div>
        <div class="boton">
                <br />
                <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" />
            </div>
        
    </form>
</body>
</html>
