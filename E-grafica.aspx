<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="E-grafica.aspx.vb" Inherits="GAMES.E_grafica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server" style="background-color: #C0C0C0; font-family: Arial, Helvetica, sans-serif">
        <div>
            <br />
            &nbsp;&nbsp; GRAFICA CANTIDAD DE VENTAS:<br />
            <br />
                        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSourceCantidadVentas" Palette="SeaGreen" Height="500px" Width="1350px">
                            <Series>
                                <asp:Series Name="Series1" XValueMember="Nombre" YValueMembers="Cantidad" ChartType="StackedBar">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSourceCantidadVentas" runat="server" ConnectionString="<%$ ConnectionStrings:GAMESConnectionString %>" SelectCommand="SELECT Juegos.Nombre, SUM(Ventas.Total) AS Cantidad
FROM     Juegos INNER JOIN
                  Ventas ON Juegos.IdJuego = Ventas.IdJuego
GROUP BY Juegos.Nombre
"></asp:SqlDataSource>
                    <br />
            GRAFICA CANTIDAD DE JUEGOS VENDIDOS:<br />
                        <asp:Chart ID="Chart2" runat="server" BorderlineColor="WhiteSmoke" DataSourceID="SqlDataSourceCantidadJuegos" Palette="Pastel" CssClass="auto-style3" Height="500px" Width="1350px">
                            <Series>
                                <asp:Series Name="Series1" XValueMember="Nombre" YValueMembers="Cantidad" ChartType="Bar">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                        <asp:SqlDataSource ID="SqlDataSourceCantidadJuegos" runat="server" ConnectionString="<%$ ConnectionStrings:GAMESConnectionString %>" SelectCommand="SELECT Juegos.Nombre, SUM(Ventas.Cantidad) AS Cantidad
FROM     Juegos INNER JOIN
                  Ventas ON Juegos.IdJuego = Ventas.IdJuego
GROUP BY Juegos.Nombre"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="Red" BorderColor="Red" Text="VOLVER" />
        </div>
    </form>
</body>
</html>
