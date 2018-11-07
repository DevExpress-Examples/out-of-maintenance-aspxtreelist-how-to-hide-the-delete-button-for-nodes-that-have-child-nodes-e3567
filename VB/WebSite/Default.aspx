<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxTreeList ID="ASPxTreeList1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1"
			KeyFieldName="EmployeeID" ParentFieldName="ReportsTo" 
			EnableCallbacks="true" 
			oncommandcolumnbuttoninitialize="ASPxTreeList1_CommandColumnButtonInitialize" 
			onnodedeleting="ASPxTreeList1_NodeDeleting">
			<Columns>
				<dx:TreeListTextColumn FieldName="LastName" VisibleIndex="0">
				</dx:TreeListTextColumn>
				<dx:TreeListTextColumn FieldName="FirstName" VisibleIndex="1">
				</dx:TreeListTextColumn>
				<dx:TreeListTextColumn FieldName="Title" VisibleIndex="2">
				</dx:TreeListTextColumn>
				<dx:TreeListCommandColumn VisibleIndex="3">
					<DeleteButton Visible="True">
					</DeleteButton>
				</dx:TreeListCommandColumn>
			</Columns>
		 </dx:ASPxTreeList>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
			DeleteCommand="DELETE FROM [Employees] WHERE [EmployeeID] = ?" InsertCommand="INSERT INTO [Employees] ([EmployeeID], [LastName], [FirstName], [Title], [ReportsTo]) VALUES (?, ?, ?, ?, ?)"
			SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [Title], [ReportsTo] FROM [Employees]"
			UpdateCommand="UPDATE [Employees] SET [LastName] = ?, [FirstName] = ?, [Title] = ?, [ReportsTo] = ? WHERE [EmployeeID] = ?">
			<DeleteParameters>
				<asp:Parameter Name="EmployeeID" Type="Int32" />
			</DeleteParameters>
			<UpdateParameters>
				<asp:Parameter Name="LastName" Type="String" />
				<asp:Parameter Name="FirstName" Type="String" />
				<asp:Parameter Name="Title" Type="String" />
				<asp:Parameter Name="ReportsTo" Type="Int32" />
				<asp:Parameter Name="EmployeeID" Type="Int32" />
			</UpdateParameters>
			<InsertParameters>
				<asp:Parameter Name="EmployeeID" Type="Int32" />
				<asp:Parameter Name="LastName" Type="String" />
				<asp:Parameter Name="FirstName" Type="String" />
				<asp:Parameter Name="Title" Type="String" />
				<asp:Parameter Name="ReportsTo" Type="Int32" />
			</InsertParameters>
		</asp:AccessDataSource>
	</div>
	</form>
</body>
</html>