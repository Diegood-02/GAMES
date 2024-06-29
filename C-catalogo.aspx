<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="C-catalogo.aspx.vb" Inherits="GAMES.C_catalogo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif; background-color: #C0C0C0">
        <div>
            CATALOGO DE JUEGOS:
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdJuego" DataSourceID="SqlDataSourceCatalogo" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="IdJuego" HeaderText="IdJuego" InsertVisible="False" ReadOnly="True" SortExpression="IdJuego" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                <asp:BoundField DataField="Desarrollador" HeaderText="Desarrollador" SortExpression="Desarrollador" />
                <asp:BoundField DataField="Plataforma" HeaderText="Plataforma" SortExpression="Plataforma" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceCatalogo" runat="server" ConnectionString="<%$ ConnectionStrings:GAMESConnectionString %>" SelectCommand="SELECT Juegos.IdJuego, Juegos.Nombre, Juegos.Precio, Categorias.Nombre AS Categoria, Desarrolladores.Nombre AS Desarrollador, Plataformas.Nombre AS Plataforma
FROM     Juegos INNER JOIN
                  Juegos_Categorias ON Juegos.IdJuego = Juegos_Categorias.IdJuego INNER JOIN
                  Juegos_Desarrolladores ON Juegos.IdJuego = Juegos_Desarrolladores.IdJuego INNER JOIN
                  Juegos_Plataformas ON Juegos.IdJuego = Juegos_Plataformas.IdJuego INNER JOIN
                  Categorias ON Juegos_Categorias.IdCategoria = Categorias.IdCategoria INNER JOIN
                  Desarrolladores ON Juegos_Desarrolladores.IdDesarrollador = Desarrolladores.IdDesarrollador INNER JOIN
                  Plataformas ON Juegos_Plataformas.IdPlataforma = Plataformas.IdPlataforma
"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="Red" BorderColor="Red" Text="VOLVER" />
    </form>
</body>
</html>
