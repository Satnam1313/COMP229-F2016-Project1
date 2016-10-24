<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="COMP229_F2016_Project1.Admin.Game.Default" %>
<%-- 	Author's name: Sahil Mahajan
     	Student	Number:	300881428
        Date Modified: October 24th, 2016
        Version	History:Part-1.Project Concept & Setup, 
                        Part-2.Main	Game Tracking Page, DB & Partial Function
                        Part-3.Full Functionality & Site Security
        File Description: Aspx file. Display page, displaying all the games stats within the gridview, with edit, and delete button. 	
    --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  class="container-fluid jumbotron">

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
<asp:GridView ID="GridView_games" runat="server" AutoGenerateColumns="False" DataKeyNames="game_id" AllowPaging="true"
            OnPageIndexChanging="OnPaging" OnRowEditing="GridView_games_RowEditing" PageSize="4" ShowHeaderWhenEmpty="true" CssClass="table table-bordered"
            HeaderStyle-BackColor="#23527C" HeaderStyle-ForeColor="#FFFFFF">
            <Columns>
                <asp:TemplateField HeaderText="Game ID" Visible="false" HeaderStyle-CssClass="text-center">
                    <ItemTemplate>
                    <asp:Label ID="label_game_id" runat="server"
                    Text='<%# Eval("game_id")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Game" HeaderStyle-CssClass="text-center">
                    <ItemTemplate>
                    <asp:Label ID="label_game_name" runat="server"
                    Text='<%# Eval("game_name")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Team 1" HeaderStyle-CssClass="text-center">
                    <ItemTemplate>
                    <asp:Label ID="label_team_name_1" runat="server"
                    Text='<%# Eval("team_name_1")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Team 2" HeaderStyle-CssClass="text-center">
                    <ItemTemplate>
                    <asp:Label ID="label_team_name_2" runat="server"
                    Text='<%# Eval("team_name_2")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Half-Time" HeaderStyle-CssClass="text-center">
                    <ItemTemplate>
                    <asp:Label ID="label_game_score_ht" runat="server"
                    Text='<%# Eval("game_score_ht")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Full-Time" HeaderStyle-CssClass="text-center">
                    <ItemTemplate>
                    <asp:Label ID="label_game_score_ft" runat="server"
                    Text='<%# Eval("game_score_ft")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Date" HeaderStyle-CssClass="text-center">
                    <ItemTemplate>
                    <asp:Label ID="label_game_date" runat="server"
                    Text='<%# string.Concat(Eval("game_date", "{0:MM/dd/yyyy}"))%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Stadium" HeaderStyle-CssClass="text-center">
                    <ItemTemplate>
                    <asp:Label ID="label_game_stadium" runat="server"
                    Text='<%# Eval("game_stadium")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Referee" HeaderStyle-CssClass="text-center">
                    <ItemTemplate>
                    <asp:Label ID="label_game_refree" runat="server"
                    Text='<%# Eval("game_refree")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Highlights" HeaderStyle-CssClass="text-center">
                    <ItemTemplate>
                    <asp:Label ID="label_game_short_description" runat="server"
                    Text='<%# Eval("game_short_description")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Spectators" HeaderStyle-CssClass="text-center">
                    <ItemTemplate>
                    <asp:Label ID="label_game_spectators" runat="server"
                    Text='<%# Eval("game_spectators")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                
                <asp:TemplateField ShowHeader="False" ItemStyle-CssClass="text-center">
                    <ItemTemplate>
                    <asp:ImageButton runat="server" CommandName="Edit" CausesValidation="False" ID="ButtonEdit" Width="24px" ImageUrl="~/images/edit.svg" ToolTip="Edit"></asp:ImageButton>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField ShowHeader="False" ItemStyle-CssClass="text-center">
                    <ItemTemplate>
                    <asp:ImageButton runat="server" Text="Delete" CommandName="Delete" CausesValidation="False" ID="ButtonDelete" Width="24px" ImageUrl="~/images/delete.svg"
                    CommandArgument = '<%# Eval("game_id")%>' 
                    OnClientClick = "return confirm('Do you want to delete?')"
                    OnClick="ButtonDelete_Click" ToolTip="Delete">
                    </asp:ImageButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView_games" />
            </Triggers>
        </asp:UpdatePanel>
        
    </div>
</asp:Content>
