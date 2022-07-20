<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones1.aspx.cs" Inherits="GesPresta.Prestaciones1" %>

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
            DATOS DE LAS PRESTACIONES
        </div>
        <div class="cuerpo">
            <div class="linea">
                <div class="textos">
                    Código Prestación
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtCodPre" runat="server" Width="175px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Descripción
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtDesPre" runat="server" Width="350px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Importe Fijo
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtImpPre" runat="server" Width="175px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Porcentaje del Importe
                </div>
                <div class="controles">
                    <asp:TextBox ID="texPorPre" runat="server" Width="175px"></asp:TextBox>
                </div>
            </div>
            <div class="linea">
                <div class="textos">
                    Tipo de Prestación
                </div>
                <div class="controles">
                    <asp:DropDownList ID="ddlTipPre" runat="server">
                        <asp:ListItem>Dentaria</asp:ListItem>
                        <asp:ListItem>Familiar</asp:ListItem>
                        <asp:ListItem Selected="True">Ocular</asp:ListItem>
                        <asp:ListItem>Otras</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="final">
            </div>
            <div class="boton">
                <br />
                <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" PostBackUrl="~/Prestaciones1Respuesta.aspx" />
            </div>
        </div>
    </form>
</body>
</html>
