<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GesPresta.Default" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<link rel="stylesheet" href="styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Cabecera ID="Cabecera1" runat="server" />
        <br />
    </form>
    <div class="contenedorMain">
    <p>
        La corporación ACME está comprometida con sus empleados. Para ello ha establecido una serie de prestaciones que pueden utilizar sus empleados para obtener ayudas asociadas a diversos gastos de tipo familiar, médico, etc.</p>
    <p>
        Esta aplicación a través de Web permite realizar todas las tareas de gestión relacionadas con la prestación de ayudas a los empleados.</p>
    <p>
        Para cualquier duda o consulta puede contactar con el Departamento de Ayuda Social: <a href="mailto:ayuda.social@acme.com">ayuda.social@acme.com</a></p>
    </div>
</body>
</html>
