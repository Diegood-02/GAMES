<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="C-buscarDes.aspx.vb" Inherits="GAMES.C_buscarDes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif; background-color: #C0C0C0">
        <div>
            BUSCAR JUEGO POR DESARROLLADOR:<br />
            <br />
            DESARROLLADOR:
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcebuscarDesarrollador" DataTextField="Nombre" DataValueField="Nombre">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourcebuscarDesarrollador" runat="server" ConnectionString="<%$ ConnectionStrings:GAMESConnectionString %>" SelectCommand="SELECT [Nombre] FROM [Desarrolladores]"></asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceTablaDesarrolladores" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:BoundField DataField="Desarrollador" HeaderText="Desarrollador" SortExpression="Desarrollador" />
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
        <asp:SqlDataSource ID="SqlDataSourceTablaDesarrolladores" runat="server" ConnectionString="<%$ ConnectionStrings:GAMESConnectionString %>" SelectCommand="SELECT Juegos.Nombre, Juegos.Precio, Desarrolladores.Nombre AS Desarrollador
FROM     Juegos INNER JOIN
                  Juegos_Desarrolladores ON Juegos.IdJuego = Juegos_Desarrolladores.IdJuego INNER JOIN
                  Desarrolladores ON Juegos_Desarrolladores.IdDesarrollador = Desarrolladores.IdDesarrollador
WHERE (Desarrolladores.Nombre = @Nombre)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Nombre" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="Red" BorderColor="Red" Text="VOLVER" />
    </form>
</body>
</html>
