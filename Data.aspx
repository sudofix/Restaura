<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Data.aspx.cs" Inherits="Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <h3>BreakFast</h3>
        <hr />
        <div class="form-inline">
            <div class="form-group">
        <asp:TextBox ID="TextBox1" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;" ></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Insert" CssClass="form-control" style="margin : 5px 5px 5px 5px;" OnClick="Button1_Click"/>
                </div>
            </div>
        <div class="table">
            <asp:gridview id="GridView1" runat="server" allowsorting="True" autogeneratecolumns="False" backcolor="White" bordercolor="#DEDFDE" borderstyle="None" borderwidth="1px" cellpadding="4" datakeynames="Id" datasourceid="SqlDataSource1" emptydatatext="There are no data records to display." forecolor="Black" gridlines="Vertical" allowpaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:gridview>
        </div>
        <hr />
        <h3>Dessert</h3>
        <hr />
        <div class="form-inline">
            <div class="form-group">
        <asp:TextBox ID="TextBox5" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;" ></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Insert" CssClass="form-control" style="margin : 5px 5px 5px 5px;" OnClick="Button2_Click"/>
                </div>
            </div>
        <div class="table">
            <asp:gridview id="GridView2" runat="server" allowsorting="True" autogeneratecolumns="False" backcolor="White" bordercolor="#DEDFDE" borderstyle="None" borderwidth="1px" cellpadding="4" datakeynames="Id" datasourceid="SqlDataSource2" emptydatatext="There are no data records to display." forecolor="Black" gridlines="Vertical" allowpaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:gridview>
            <asp:sqldatasource id="SqlDataSource2" runat="server" connectionstring="<%$ ConnectionStrings:ResturaConnectionString1 %>" deletecommand="DELETE FROM [dessert] WHERE [Id] = @Id" insertcommand="INSERT INTO [dessert] ([name], [price], [img]) VALUES (@name, @price, @img)" providername="<%$ ConnectionStrings:ResturaConnectionString1.ProviderName %>" selectcommand="SELECT [Id], [name], [price], [img] FROM [dessert]" updatecommand="UPDATE [dessert] SET [name] = @name, [price] = @price, [img] = @img WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="img" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:sqldatasource>
        </div>
        <hr />
        <h3>Dinner</h3>
        <hr />
        <div class="form-inline">
            <div class="form-group">
        <asp:TextBox ID="TextBox9" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;" ></asp:TextBox>
        <asp:TextBox ID="TextBox10" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;"></asp:TextBox>
        <asp:TextBox ID="TextBox11" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" Text="Insert" CssClass="form-control" style="margin : 5px 5px 5px 5px;" OnClick="Button3_Click"/>
                </div>
            </div>
        <div class="table">
            <asp:gridview id="GridView3" runat="server" allowsorting="True" autogeneratecolumns="False" backcolor="White" bordercolor="#DEDFDE" borderstyle="None" borderwidth="1px" cellpadding="4" datakeynames="Id" datasourceid="SqlDataSource3" emptydatatext="There are no data records to display." forecolor="Black" gridlines="Vertical" allowpaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:gridview>
            <asp:sqldatasource id="SqlDataSource3" runat="server" connectionstring="<%$ ConnectionStrings:ResturaConnectionString1 %>" deletecommand="DELETE FROM [dinner] WHERE [Id] = @Id" insertcommand="INSERT INTO [dinner] ([name], [price], [img]) VALUES (@name, @price, @img)" providername="<%$ ConnectionStrings:ResturaConnectionString1.ProviderName %>" selectcommand="SELECT [Id], [name], [price], [img] FROM [dinner]" updatecommand="UPDATE [dinner] SET [name] = @name, [price] = @price, [img] = @img WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="img" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:sqldatasource>
        </div>
        <hr />
        <h3>Drinks</h3>
        <hr />
        <div class="form-inline">
            <div class="form-group">
        <asp:TextBox ID="TextBox13" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;" ></asp:TextBox>
        <asp:TextBox ID="TextBox14" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;"></asp:TextBox>
        <asp:TextBox ID="TextBox15" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;"></asp:TextBox>
        <asp:Button ID="Button4" runat="server" Text="Insert" CssClass="form-control" style="margin : 5px 5px 5px 5px;" OnClick="Button4_Click"/>
                </div>
            </div>
        <div class="table">
            <asp:gridview id="GridView4" runat="server" allowsorting="True" autogeneratecolumns="False" backcolor="White" bordercolor="#DEDFDE" borderstyle="None" borderwidth="1px" cellpadding="4" datakeynames="Id" datasourceid="SqlDataSource4" emptydatatext="There are no data records to display." forecolor="Black" gridlines="Vertical" allowpaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:gridview>
            <asp:sqldatasource id="SqlDataSource4" runat="server" connectionstring="<%$ ConnectionStrings:ResturaConnectionString1 %>" deletecommand="DELETE FROM [drinks] WHERE [Id] = @Id" insertcommand="INSERT INTO [drinks] ([name], [price], [img]) VALUES (@name, @price, @img)" providername="<%$ ConnectionStrings:ResturaConnectionString1.ProviderName %>" selectcommand="SELECT [Id], [name], [price], [img] FROM [drinks]" updatecommand="UPDATE [drinks] SET [name] = @name, [price] = @price, [img] = @img WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="img" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:sqldatasource>
        </div>
        <hr />
        <h3>Users</h3>
        <hr />
        <div class="form-inline">
            <div class="form-group">
        <asp:TextBox ID="TextBox17" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;" ></asp:TextBox>
        <asp:TextBox ID="TextBox18" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;"></asp:TextBox>
        <asp:TextBox ID="TextBox19" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;"></asp:TextBox>
        <asp:TextBox ID="TextBox20" runat="server" Width="120px" style="margin : 5px 5px 5px 5px;"></asp:TextBox>
        <asp:Button ID="Button5" runat="server" Text="Insert" CssClass="form-control" style="margin : 5px 5px 5px 5px;" OnClick="Button5_Click"/>
                </div>
            </div>
        <div class="table">
            <asp:gridview id="GridView5" runat="server" allowsorting="True" autogeneratecolumns="False" backcolor="White" bordercolor="#DEDFDE" borderstyle="None" borderwidth="1px" cellpadding="4" datakeynames="Id" datasourceid="SqlDataSource5" emptydatatext="There are no data records to display." forecolor="Black" gridlines="Vertical" allowpaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:gridview>
            <asp:sqldatasource id="SqlDataSource5" runat="server" connectionstring="<%$ ConnectionStrings:ResturaConnectionString1 %>" deletecommand="DELETE FROM [users] WHERE [Id] = @Id" insertcommand="INSERT INTO [users] ([username], [password], [email], [name]) VALUES (@username, @password, @email, @name)" providername="<%$ ConnectionStrings:ResturaConnectionString1.ProviderName %>" selectcommand="SELECT [Id], [username], [password], [email], [name] FROM [users]" updatecommand="UPDATE [users] SET [username] = @username, [password] = @password, [email] = @email, [name] = @name WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:sqldatasource>
            <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:ResturaConnectionString1 %>" deletecommand="DELETE FROM [breakfast] WHERE [Id] = @Id" insertcommand="INSERT INTO [breakfast] ([name], [price], [img]) VALUES (@name, @price, @img)" providername="<%$ ConnectionStrings:ResturaConnectionString1.ProviderName %>" selectcommand="SELECT [Id], [name], [price], [img] FROM [breakfast]" updatecommand="UPDATE [breakfast] SET [name] = @name, [price] = @price, [img] = @img WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="img" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:sqldatasource>
        </div>
        <hr />
    </div>

</asp:Content>

