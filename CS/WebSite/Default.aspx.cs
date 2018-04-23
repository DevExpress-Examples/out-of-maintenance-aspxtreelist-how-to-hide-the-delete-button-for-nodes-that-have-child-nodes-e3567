using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxTreeList;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load (object sender, EventArgs e) {
     
    }
    protected void ASPxTreeList1_NodeDeleting (object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e) {
        throw new Exception("Data modifications are not allowed in the online example.");
    }
    protected void ASPxTreeList1_CommandColumnButtonInitialize (object sender, TreeListCommandColumnButtonEventArgs e) {
        if (e.ButtonType != TreeListCommandColumnButtonType.Delete)
            return;

        if (ASPxTreeList1.FindNodeByKeyValue(e.NodeKey).ChildNodes.Count != 0)
            e.Visible = DevExpress.Utils.DefaultBoolean.False;
    }
}
