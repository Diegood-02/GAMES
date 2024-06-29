Public Class E_menu
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button12_Click(sender As Object, e As EventArgs) Handles Button12.Click
        Response.Redirect("Inicio")
    End Sub

    Protected Sub Button16_Click(sender As Object, e As EventArgs)
        Response.Redirect("E-nuevojuego.aspx")
    End Sub

    Protected Sub Button16_Click1(sender As Object, e As EventArgs) Handles Button16.Click
        Response.Redirect("E-nuevojuego.aspx")
    End Sub

    Protected Sub Button17_Click(sender As Object, e As EventArgs) Handles Button17.Click
        Response.Redirect("E-buscarjuego.aspx")
    End Sub

    Protected Sub Button18_Click(sender As Object, e As EventArgs) Handles Button18.Click
        Response.Redirect("E-actualizarprecio.aspx")
    End Sub

    Protected Sub Button19_Click(sender As Object, e As EventArgs) Handles Button19.Click
        Response.Redirect("E-eliminarjuego.aspx")
    End Sub

    Protected Sub Button23_Click(sender As Object, e As EventArgs) Handles Button23.Click
        Response.Redirect("E-agredesarrollador.aspx")
    End Sub

    Protected Sub Button22_Click(sender As Object, e As EventArgs) Handles Button22.Click
        Response.Redirect("E-agrecategoria.aspx")
    End Sub

    Protected Sub Button21_Click(sender As Object, e As EventArgs) Handles Button21.Click
        Response.Redirect("E-agreplataforma.aspx")
    End Sub

    Protected Sub Button20_Click(sender As Object, e As EventArgs) Handles Button20.Click
        Response.Redirect("E-nuevodesarrollador.aspx")
    End Sub

    Protected Sub Button24_Click(sender As Object, e As EventArgs) Handles Button24.Click
        Response.Redirect("E-calcularventa.aspx")
    End Sub

    Protected Sub Button25_Click2(sender As Object, e As EventArgs) Handles Button25.Click
        Response.Redirect("E-eliminarventa.aspx")
    End Sub

    Protected Sub Button26_Click(sender As Object, e As EventArgs) Handles Button26.Click
        Response.Redirect("E-ventasmes.aspx")
    End Sub

    Protected Sub Button31_Click(sender As Object, e As EventArgs) Handles Button31.Click
        Response.Redirect("E-nuevocliente.aspx")
    End Sub

    Protected Sub Button30_Click(sender As Object, e As EventArgs) Handles Button30.Click
        Response.Redirect("E-eliminarcliente.aspx")
    End Sub

    Protected Sub Button29_Click(sender As Object, e As EventArgs) Handles Button29.Click
        Response.Redirect("E-actualizarcliente.aspx")
    End Sub

    Protected Sub Button27_Click(sender As Object, e As EventArgs) Handles Button27.Click
        Response.Redirect("E-grafica.aspx")
    End Sub
End Class