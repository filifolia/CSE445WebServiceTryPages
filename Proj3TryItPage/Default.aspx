<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proj3TryItPage._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>TryIt Page - CSE 445 William Minar Widjaja</h1>
        <p>The index page: <a href="http://webstrar46.fulton.asu.edu/index.html">http://webstrar46.fulton.asu.edu/index.html</a>&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-3">
            <h3>Word Filter</h3>
            <p>
                Manipulate input string as it removes stop words and removes any attribute or element types inside <> brackets
            </p>
            <p>
                Input a string here:</p>
            <p>
                &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="244px"></asp:TextBox>&nbsp;</p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="INVOKE" Width="261px" />
            </p>
            <p>
                The modified string :
                </p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="(Please input a string first)"></asp:Label>
            </p>

        </div>

        <div class="col-md-3">
            <h3>Weather Forecast Service</h3>
            <p>
                Input a zipcode within the U.S and it will output an array of weather forecast for the next 5 days.
            </p>
            <p>
                &nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="244px"></asp:TextBox>&nbsp;</p>
            <p>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="INVOKE" Width="261px" />
            </p>
            <p>
                The modified string :
                </p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="(Please input a zipcode first)"></asp:Label>
            </p>
        </div>
    </div>
    <div class="row">
            <h3>Dictionary Define Service</h3>
            <p>
                Input a word and it will return an array of definitions from multiple sources of dictionaries
            </p>
            <p>
                &nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="21px" Width="244px"></asp:TextBox>&nbsp;</p>
            <p>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="INVOKE" Width="261px" />
            </p>
            <p>
                The Definitions :
                </p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="(Please input a word first)"></asp:Label>
            </p>
    </div>
    <div class="row">
            <h3>ZipCode Time Information Service</h3>
            <p>
                Input a zipcode within the U.S and it will output the name of the city along with the current time and timezone</p>
            <p>
                &nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="21px" Width="244px"></asp:TextBox>&nbsp;</p>
            <p>
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="INVOKE" Width="261px" />
            </p>
            <p>
                The time info :
                </p>
            <p>
                <asp:Label ID="Label4" runat="server" Text="(Please input a zipcode first)"></asp:Label>
            </p>
    </div>
    <div class="row">
            <h3>Temperature City/Country Service</h3>
            <p>
                Outputs the temperature of a city in a country with Fahrenheit, Celcius, and Kelvin degrees</p>
            <p>
                Input a city here:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" Height="21px" Width="244px"></asp:TextBox></p>
            <p>
                Input a country here:&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox6" runat="server" Height="21px" Width="244px"></asp:TextBox>&nbsp;</p>             
            <p>
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="INVOKE" Width="261px" />
            </p>
            <p>
                The temperature :
                </p>
            <p>
                <asp:Label ID="Label5" runat="server" Text="(Please input the strings first)"></asp:Label>
            </p>
    </div>
    <div class="row">
            <h3>Fahrenheit to Kelvin Converter</h3>
            <p>
                Converts the input fahrenheit degree to an integer in Kelvin degree</p>
            <p>
                Input a number in Fahrenheit: &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox7" runat="server" Height="21px" Width="244px"></asp:TextBox></p>            
            <p>
                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="INVOKE" Width="261px" />
            </p>
            <p>
                The temperature :
                </p>
            <p>
                <asp:Label ID="Label6" runat="server" Text="(Please input a number first)"></asp:Label>
            </p>
    </div>

</asp:Content>
