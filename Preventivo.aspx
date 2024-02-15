<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preventivo.aspx.cs" Inherits="Concessionaria.Preventivo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Concessionaria</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous" defer></script>
    <link href="Stile/StyleHome.css" rel="stylesheet" />
</head>
<body class="bg-success mt-5">
    <form id="form1" runat="server">
        <div>
            <div class="d-flex justify-content-center">
                <h1>Concesionaria Ferrari</h1>
            </div>
            <div class="d-flex justify-content-evenly">
                <div>
                    <h2>Seleziona Auto</h2>
                    <asp:DropDownList ID="ddlCar" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCar_SelectedIndexChanged">
                        <asp:ListItem Text="Seleziona..." Value=""></asp:ListItem>
                        <asp:ListItem Text="Macchina1" Value="20000"></asp:ListItem>
                        <asp:ListItem Text="Macchina2" Value="25000"></asp:ListItem>
                        <asp:ListItem Text="Macchina3" Value="30000"></asp:ListItem>
                    </asp:DropDownList>
                    <h2>Seleziona Optional</h2>
                    <asp:CheckBoxList ID="cblOptions" runat="server">
                        <asp:ListItem Text="Optional 1 (1000 euro)" Value="1000"></asp:ListItem>
                        <asp:ListItem Text="Optional 2 (1500 euro)" Value="1500"></asp:ListItem>
                        <asp:ListItem Text="Optional 3 (2000 euro)" Value="2000"></asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <h2>Numero di anni di garanzia</h2>
                    <p>ogni anno di garanzia costa 120,00 EUR cad</p>
                    <asp:TextBox ID="txtWarrantyYears" runat="server" CssClass="my-2"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnCalculate" runat="server" Text="Calcola Preventivo" OnClick="btnCalculate_Click" CssClass="btn btn-primary"/>
                    <br />
                    <h2>Prezzi totali:</h2>
                    <p>
                        Prezzo di base:
                        <asp:Label ID="lblBasePrice" runat="server"></asp:Label>
                    </p>
                    <p>
                        Totale optional:
                        <asp:Label ID="lblOptionalTotal" runat="server"></asp:Label>
                    </p>
                    <p>
                        Totale garanzia:
                        <asp:Label ID="lblWarrantyTotal" runat="server"></asp:Label>
                    </p>
                    <p>
                        Totale complessivo:
                        <asp:Label ID="lblTotalPrice" runat="server"></asp:Label>
                    </p>
                </div>
                <div>
                    <asp:Image ID="imgCar" runat="server"/>
                    <br />
                    <div class="d-flex justify-content-evenly">
                        <asp:Label ID="lblCostoAuto" runat="server" Text="" CssClass="font-size-prezzo"></asp:Label>
                    </div>
                </div>
            </div>
    </form>
</body>
</html>
