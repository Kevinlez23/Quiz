<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="School.aspx.cs" Inherits="Quiz.Vistas.School" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>School</h2>
            <br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <br />

            School Name:
            <asp:TextBox ID="TSchoolname" runat="server"></asp:TextBox>
            <br />
            Description:
            <asp:TextBox ID="TDescription" runat="server"></asp:TextBox>
            <br />
             Adress:
            <asp:TextBox ID="TAdress" runat="server"></asp:TextBox>
             Phone:
            <asp:TextBox ID="TPhone" runat="server"></asp:TextBox>
             Post Code:
            <asp:TextBox ID="TCode" runat="server"></asp:TextBox> 
            <br />
            Post Adress:
            <asp:TextBox ID="TPostAdress" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />

            <asp:Button ID="Bagregar" runat="server" Text="Agregar" OnClick="Bagregar_Click" />
            <asp:Button ID="Beliminar" runat="server" Text="Eliminar" OnClick="Beliminar_Click" />
            <asp:Button ID="BModificar" runat="server" Text="Modificar" OnClick="BModificar_Click" />


        </div>
    </form>
</body>
</html>