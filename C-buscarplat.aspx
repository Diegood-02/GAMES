<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="C-buscarplat.aspx.vb" Inherits="GAMES.C_buscarplat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #C0C0C0; background-image: none; font-family: Arial, Helvetica, sans-serif;">
        <div>
            BUSCAR JUEGO POR PLATAFORMA:
            <br />
            <br />
            PLATAFORMA:
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceBuscarPlataforma" DataTextField="Nombre" DataValueField="Nombre">
            </asp:DropDownList>
            <br />
            <asp:SqlDataSource ID="SqlDataSourceBuscarPlataforma" runat="server" ConnectionString="<%$ ConnectionStrings:GAMESConnectionString %>" SelectCommand="SELECT [Nombre] FROM [Plataformas]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceJuegosPlataforma" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
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
            <asp:SqlDataSource ID="SqlDataSourceJuegosPlataforma" runat="server" ConnectionString="<%$ ConnectionStrings:GAMESConnectionString %>" SelectCommand="SELECT Juegos.Nombre, Juegos.Precio, Plataformas.Nombre AS Plataforma
FROM     Juegos INNER JOIN
                  Juegos_Plataformas ON Juegos.IdJuego = Juegos_Plataformas.IdJuego INNER JOIN
                  Plataformas ON Juegos_Plataformas.IdPlataforma = Plataformas.IdPlataforma
WHERE  (Plataformas.Nombre = @Nombre)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Nombre" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="Red" BorderColor="Red" Text="VOLVER" />
        </div>
    </form>
</body>
</html>
