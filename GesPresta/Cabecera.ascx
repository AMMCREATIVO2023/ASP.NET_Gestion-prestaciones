<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.Cabecera" %>


<div class="cabecera">
<div class="menuCabecera">
<asp:LinkButton class="linkc" ID="inicioLink" runat="server" PostBackUrl="~/Default.aspx" CausesValidation="False">Inicio</asp:LinkButton>
<asp:LinkButton class="linkc" ID="empleadosLink" runat="server" PostBackUrl="~/Empleados.aspx" CausesValidation="False">Empleados</asp:LinkButton>
<asp:LinkButton class="linkc" ID="prestacionesLink" runat="server" PostBackUrl="~/Prestaciones.aspx" CausesValidation="False">Prestaciones</asp:LinkButton>
</div>
<h1>ACME INNOVACIÓN, S. FIG.</h1>

<h3>Gestión de Prestaciones Sociales</h3>
<hr />
</div>
