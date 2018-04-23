Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxTreeList

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Protected Sub ASPxTreeList1_NodeDeleting(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataDeletingEventArgs)
		Throw New Exception("Data modifications are not allowed in the online example.")
	End Sub
	Protected Sub ASPxTreeList1_CommandColumnButtonInitialize(ByVal sender As Object, ByVal e As TreeListCommandColumnButtonEventArgs)
		If e.ButtonType <> TreeListCommandColumnButtonType.Delete Then
			Return
		End If

		If ASPxTreeList1.FindNodeByKeyValue(e.NodeKey).ChildNodes.Count <> 0 Then
			e.Visible = DevExpress.Utils.DefaultBoolean.False
		End If
	End Sub
End Class
