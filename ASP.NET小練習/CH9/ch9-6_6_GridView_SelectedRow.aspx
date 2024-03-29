﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch9-6_6_GridView_SelectedRow.aspx.cs" Inherits="ch9_6_6_GridView_SelectedRow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AccessDataSource ID="accessDataSourcr" runat="server" DataFile="~/App_Data/MyDatabase.mdb" DeleteCommand="DELETE FROM [學生成績表] WHERE [序號] = ?" InsertCommand="INSERT INTO [學生成績表] ([序號], [學號], [姓名], [性別], [資料庫成績], [系統分析成績], [程式設計成績], [計算機概論成績]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [學生成績表]" UpdateCommand="UPDATE [學生成績表] SET [學號] = ?, [姓名] = ?, [性別] = ?, [資料庫成績] = ?, [系統分析成績] = ?, [程式設計成績] = ?, [計算機概論成績] = ? WHERE [序號] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="序號" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="序號" Type="Int32" />
                    <asp:Parameter Name="學號" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性別" Type="String" />
                    <asp:Parameter Name="資料庫成績" Type="Int32" />
                    <asp:Parameter Name="系統分析成績" Type="Int32" />
                    <asp:Parameter Name="程式設計成績" Type="Int32" />
                    <asp:Parameter Name="計算機概論成績" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="學號" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="性別" Type="String" />
                    <asp:Parameter Name="資料庫成績" Type="Int32" />
                    <asp:Parameter Name="系統分析成績" Type="Int32" />
                    <asp:Parameter Name="程式設計成績" Type="Int32" />
                    <asp:Parameter Name="計算機概論成績" Type="Int32" />
                    <asp:Parameter Name="序號" Type="Int32" />
                </UpdateParameters>
            </asp:AccessDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="序號" DataSourceID="accessDataSourcr" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>

                    <asp:TemplateField ShowHeader="False" HeaderText="功能選項">
                        <EditItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Select" Text="選取" />
                            &nbsp;
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                            &nbsp;
                            <asp:Button ID="Button3" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" OnClientClick="return confirm('確定刪除此資料？');"/>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="序號" HeaderText="序號" InsertVisible="False" ReadOnly="True" SortExpression="序號" />
                    <asp:BoundField DataField="學號" HeaderText="學號" SortExpression="學號" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:TemplateField HeaderText="性別" SortExpression="性別">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("性別") %>'>
                                <asp:ListItem>男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("性別") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="資料庫成績" HeaderText="資料庫成績" SortExpression="資料庫成績" />
                    <asp:BoundField DataField="系統分析成績" HeaderText="系統分析成績" SortExpression="系統分析成績" />
                    <asp:BoundField DataField="程式設計成績" HeaderText="程式設計成績" SortExpression="程式設計成績" />
                    <asp:BoundField DataField="計算機概論成績" HeaderText="計算機概論成績" SortExpression="計算機概論成績" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView><br />
            已選取：<asp:Label ID="label1" runat="server" ></asp:Label>
        </div>
    </form>
</body>
</html>
