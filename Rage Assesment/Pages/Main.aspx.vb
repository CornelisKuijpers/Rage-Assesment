Public Class Main
    Inherits System.Web.UI.Page

    Private ds As DataSet = New DataSet()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If UserDetails.DatabaseUserName = "" Then
            HttpContext.Current.Response.Redirect("~/Default.aspx")
        End If

        If Not Page.IsPostBack Then
            BindData()
        End If

    End Sub

    Public Sub define_dataset()
        ds.Tables.Add("StockList")
        ds.Tables("StockList").Columns.Add("sku_number")
        ds.Tables("StockList").Columns.Add("description")
        ds.Tables("StockList").Columns.Add("category_1")
        ds.Tables("StockList").Columns.Add("category_2")
        ds.Tables("StockList").Columns.Add("category_3")
        ds.Tables("StockList").Columns.Add("created")
        ds.Tables("StockList").Columns.Add("updated")
    End Sub

    Public Sub BindData()

        define_dataset()

        Dim myRage As New myRageService.testingSoapClient

        Dim stockCodes = myRage.GetSomeStockcodesTesting()

        For Each StockCode In stockCodes

            Dim newRow As DataRow = ds.Tables("StockList").NewRow

            newRow("sku_number") = StockCode.sku_number
            newRow("description") = StockCode.description
            newRow("category_1") = StockCode.category_1
            newRow("category_2") = StockCode.category_2
            newRow("category_3") = StockCode.category_3
            newRow("created") = StockCode.created
            newRow("updated") = StockCode.updated

            ds.Tables("StockList").Rows.Add(newRow)
        Next

        Grid.DataSource = ds
        Grid.DataBind()

    End Sub

    Private Sub Grid_PageIndexChanged(source As Object, e As DataGridPageChangedEventArgs) Handles Grid.PageIndexChanged
        Grid.CurrentPageIndex = e.NewPageIndex
        BindData()
    End Sub

End Class