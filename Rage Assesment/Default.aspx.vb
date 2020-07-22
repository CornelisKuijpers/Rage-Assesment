Public Class _Default
    Inherits Page

    Private branches
    Private tmpPassword
    Private User
    Private Branch

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        'Dim myRage As New myRageService.testingSoapClient()

        'branches = myRage.GetBranches("hajJwy2*uqyn1", "Cornelis", "")




    End Sub

    Private Sub btnSignIn_Click(sender As Object, e As EventArgs) Handles btnSignIn.Click

        Dim myRage As New myRageService.testingSoapClient()

        Dim returnObject = myRage.GetUsersTesting(txtPassword.Text, txtUsername.Text, txtBranchCode.Text)

        If returnObject.Count > 0 Then

            UserDetails.Password = txtPassword.Text
            UserDetails.DatabaseUserName = txtUsername.Text
            UserDetails.Branch = txtBranchCode.Text

            lblError.Text = "Success"

            HttpContext.Current.Response.Redirect("Pages/Main.aspx")
        Else
            lblError.Text = "Error, User or Privelage"
        End If

    End Sub

End Class

Public Class Branch

    Public branch_code As String
    Public branch_name As String

End Class