﻿Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Public Class DAO
    Private con As SqlConnection

    Public Sub New()
        con = New SqlConnection("Data Source=103.191.208.118;Initial Catalog=Data_stu6;Persist Security Info=True;User ID=Data_stu6;Password=Lovecoding@6750")

        Try
            con.Open()
            con.Close()
        Catch ex As Exception
            MsgBox("Please check database connectivity..!")
        End Try
    End Sub
    Public Function getData(ByVal str As String) As Data.DataSet
        Dim ds As New Data.DataSet
        Dim da As New SqlDataAdapter(str, con)
        con.Open()
        da.SelectCommand.ExecuteReader()
        con.Close()
        da.Fill(ds)
        Return ds
    End Function

End Class
