﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch12-1_1_TreeView.aspx.cs" Inherits="ch12_1_1_TreeView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TreeView ID="TreeView1" runat="server" ImageSet="XPFileExplorer" NodeIndent="15">
            <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
            <Nodes>
                <asp:TreeNode Text="第一章" Value="第一章">
                    <asp:TreeNode Text="1.1單元" Value="1.1單元"></asp:TreeNode>
                    <asp:TreeNode Text="1.2單元" Value="1.2單元"></asp:TreeNode>
                    <asp:TreeNode Text="1.3單元" Value="1.3單元"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="第二章" Value="第二章">
                    <asp:TreeNode Text="2.1單元" Value="2.1單元"></asp:TreeNode>
                    <asp:TreeNode Text="2.2單元" Value="2.2單元"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="2px" NodeSpacing="0px" VerticalPadding="2px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    </div>
    </form>
</body>
</html>
