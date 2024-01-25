<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LaVecchiaLira.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="it">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <title>Login</title>
        <meta name="robots" content="noindex" />
        <!-- Favicons -->
        <link href="../Library/img/favicon.ico" rel="icon"/>
        <link href="../Library/img/apple-touch-icon.png" rel="apple-touch-icon"/>

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,600,600i,700,700i|Satisfy|Comic+Neue:300,300i,400,400i,700,700i" rel="stylesheet"/>

        <!-- Vendor CSS Files -->
        <link href="../Library/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="../Library/vendor/icofont/icofont.min.css" rel="stylesheet"/>
        <link href="../Library/vendor/boxicons/css/boxicons.min.css" rel="stylesheet"/>
        <link href="../Library/vendor/animate.css/animate.min.css" rel="stylesheet"/>
        <link href="../Library/vendor/venobox/venobox.css" rel="stylesheet"/>
        <link href="../Library/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet"/>

        <!-- Template Main CSS File -->
        <link href="../Library/css/style.css" rel="stylesheet"/>

    </head>
    <body>
        <form id="form1" runat="server">
            <!-- ======= Top Bar ======= -->
            <section id="topbar" class="d-none d-lg-flex align-items-center fixed-top ">
                <div class="container text-right">
                    <i class="icofont-phone"></i> +39 011 96 26 927
                    <i class="icofont-clock-time icofont-rotate-180"></i> Lun-Ven: 12:00 - 14:30 / 19:00 - 22:00
                    <br />
                    <i class="icofont-clock-time icofont-rotate-180"></i> Sab: 19:00 - 22:00 Dom: 12:00 - 15:00 / 19:00 - 22:00
                </div>
            </section>

            <!-- ======= Header ======= -->
            <header id="header" class="fixed-top d-flex align-items-center ">
                <div class="container d-flex align-items-center">

                    <div class="logo mr-auto">
                        <h1 class="text-light"><a href="Default.aspx"><span>La Vecchia Lira</span></a></h1>
                        <!-- Uncomment below if you prefer to use an image logo -->
                        <!-- <a href="Defaut.aspx"><img src="../Library/img/logo2.jpg" alt="logo" class="img-fluid"></a>-->
                    </div>

                    <nav class="nav-menu d-none d-lg-block">
                        <ul>
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="Default.aspx#about">Chi Siamo</a></li>
                            <li><a href="Default.aspx#menu">Menu</a></li>
                            <li><a href="Default.aspx#specials">Specialit&aacute;</a></li>
                            <li><a href="Default.aspx#events">Eventi</a></li>
                            <li><a href="Default.aspx#gallery">Galleria</a></li>
                            <li><a href="Default.aspx#contact">Contatti</a></li>
                        </ul>
                    </nav>
                    <!-- .nav-menu -->

                </div>
            </header>
            <!-- End Header -->

            <main id="main">

                <!-- ======= Breadcrumbs Section ======= -->
                <section class="breadcrumbs">
                    <div class="container">

                    <div class="d-flex justify-content-between align-items-center">
                        <h2>Pagina Personalizzazione</h2>
                        <ol>
                            <li><a href="Default.aspx">Home</a></li>
                            <li>Pagina Personalizzazione</li>
                        </ol>
                    </div>

                    </div>
                </section>
                <!-- End Breadcrumbs Section -->

                <!-- ======= Login Section ======= -->
                <section runat="server" id="loginSection">
                    <div class="container">
                        <div class="form login">
                            <div class="form-row">
                                <div class="col-md-6 form-group">
                                    <input runat="server" type="text" name="username" class="form-control" id="username" placeholder="Username" required/>
                                </div>
                                <div class="col-md-6 form-group">
                                    <input runat="server" type="password" class="form-control" name="password" id="password" placeholder="Password" required/>
                                </div>
                            </div>
                            <div class="text-center">
                                <p style="color:red" id="resultAuthentication" runat="server"></p>
                            </div>
                            <div class="text-center">
                                <button type="submit">Login</button>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- End Login Section -->

                <!-- ======= DropDown Section ======= -->
                <section runat="server" id="customSection" visible="false">
                    <div class="container">
                        <div class="form-group">
                            <label for="ddlSections">Seleziona una Sezione da modificare:</label>
                            <asp:DropDownList class="form-control" runat="server" ID="ddlSections" name="ddlSections" onselectedindexchanged="ddlSections_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Value="0">Seleziona una sezione</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </section>
                <!-- End DropDown Section -->

                <!-- ======= Gallery Section ======= -->
                <section runat="server" id="gallerySection" class="contact" visible="false">
                    <div class="container">
                        <div class="section-title">
                          <h2><span>Galleria</span> Immagini</h2>
                        </div>
                    </div>
                    <div class="container mt-5">
                        <div class="php-email-form">
                            <div class="form-row">
                                <div class="col-md-6 text-center">
                                    <label for="fileUpload">Carica Immagine:</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:FileUpload runat="server" class="form-control-file" ID="fileUpload" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-6 text-center">
                                    <label for="fileDesc">Descrizione Immagine:</label>
                                </div>
                                <div class="col-md-6">
                                    <input type="text" runat="server" id="fileDesc" placeholder="Descrizione" class="form-control" />
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-6 text-center">
                                    <label for="fileVis">Visibilit&aacute; Immagine:</label>
                                </div>
                                <div class="col-md-6">
                                    <input type="checkbox" runat="server" id="fileVis" />
                                </div>
                            </div>
                            <div class="text-center">
                                <asp:Button runat="server" ID="importFile" class="btn" Text="Carica" OnClick="importFile_Click"/>
                            </div>
                        </div>
                    </div>
                    <div class="container" style="margin-top: 3rem!important;">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>Immagine</th>
                                    <th>Descrizione</th>
                                    <th>Visibilità</th>
                                    <th>Azioni</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rpt_tableImages" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("Name") %></td>
                                            <td>
                                                <asp:Image ID="image1" runat="server" Height="250" ImageUrl='<%# GetImage(Eval("Image")) %>' /> 
                                            </td>
                                            <td>
                                                <p><%# Eval("Description") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="editDesc" CssClass="form-control" Text='<%# Eval("Description") %>' />
                                            </td>
                                            <td class="text-center">
                                                <p><%# Eval("Visible") %></p>
                                                <asp:CheckBox ID="editVis" runat="server" Checked='<%# Convert.ToBoolean(Eval("Visible")) %>' style="display:none;" />
                                            </td>
                                            <td>
                                                <center class="actions">
                                                    <asp:LinkButton runat="server" class="btnDelete" ID="btnDelete" CommandName="delete" CommandArgument='<%#Eval("Id")%>' OnClick="deleteImage_Click" OnClientClick="return confirmation('Sei sicuro di voler eliminare questa immagine?');">
                                                        <i class="icofont-basket" style="font-size:25px;"></i>
                                                    </asp:LinkButton>
                                                    <asp:LinkButton runat="server" class="btnEdit" ID="btnEdit" CommandName="edit" OnClientClick="return showInputEditing($(this));">
                                                        <i class="icofont-edit" style="font-size:20px;"></i>
                                                    </asp:LinkButton>   
                                                </center>
                                                <center class="editing" style="display:none;">
                                                    <asp:LinkButton runat="server" class="btnSave" ID="btnSave" CommandName="save" CommandArgument='<%#Eval("Id")%>' OnClick="editImage_Click" OnClientClick="populateHiddenFields($(this), 'gallery');">
                                                        <i class="icofont-save" style="font-size:19px;"></i>
                                                    </asp:LinkButton>
                                                    <asp:LinkButton runat="server" class="btnCancel" ID="btnCancel" CommandName="cancel" OnClientClick="return showInputActions($(this));">
                                                        <i class="icofont-close" style="font-size:23px;"></i>
                                                    </asp:LinkButton>
                                                </center>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </section>
                <!-- End Gallery Section -->

                <!-- ======= Specials Section ======= -->
                <section runat="server" id="specialsSection" class="contact" visible="false">
                    <div class="container">
                        <div class="section-title">
                          <h2><span>Sezione</span> Specialit&aacute;</h2>
                        </div>
                    </div>
                    <div class="container mt-5">
                        <div class="php-email-form">
                             <div class="form-row">
                                <div class="col-md-12 form-group">
                                    <input runat="server" type="text" name="nav_specials" class="form-control" id="nav_specials" placeholder="Titolo Menu Laterale"/>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 form-group">
                                    <input runat="server" type="text" name="title_specials" class="form-control" id="title_specials" placeholder="Titolo Specialità"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <textarea runat="server" class="form-control" name="desc_specials" id="desc_specials" rows="5" placeholder="Descrizione"></textarea>
                            </div>
                            <div class="form-group">
                                <textarea runat="server" class="form-control" name="text_specials" id="text_specials" rows="5" placeholder="Testo"></textarea>
                            </div>
                            <div class="form-row">
                                <div class="col-md-6 text-center">
                                    <label for="fileUpload_specials">Carica Immagine:</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:FileUpload runat="server" class="form-control-file" ID="fileUpload_specials" />
                                </div>
                            </div>
                                <div class="form-row">
                                <div class="col-md-6 text-center">
                                    <label for="vis_specials">Visibilit&aacute; Specialit&aacute;:</label>
                                </div>
                                <div class="col-md-6">
                                    <input type="checkbox" runat="server" id="vis_specials" />
                                </div>
                            </div>
                            <div class="text-center">
                                <asp:Button runat="server" ID="importSpecials" class="btn" Text="Carica" OnClick="importSpecials_Click"/>
                            </div>
                        </div>
                    </div>
                    <div class="container" style="margin-top: 3rem!important;">
                        <table id="tableSpecials" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Navigazione</th>
                                    <th>Titolo</th>
                                    <th>Descrizione</th>
                                    <th>Testo</th>
                                    <th>Visibilità</th>
                                    <th>Azioni</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rpt_tableSpecials" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <p><%# Eval("Navigation") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="editNav" CssClass="form-control" Text='<%# Eval("Navigation") %>' />
                                            </td>
                                            <td>
                                                <p><%# Eval("Title") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="editTitle" CssClass="form-control" Text='<%# Eval("Title") %>' />
                                            </td>
                                            <td>
                                                <p><%# Eval("Description") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="editDesc" CssClass="form-control" Text='<%# Eval("Description") %>' />
                                            </td>
                                            <td>
                                                <p><%# Eval("Text") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="editText" CssClass="form-control" Text='<%# Eval("Text") %>' />
                                            </td>
                                            <td class="text-center">
                                                <p><%# Eval("Visible") %></p>
                                                <asp:CheckBox ID="editVis" runat="server" Checked='<%# Convert.ToBoolean(Eval("Visible")) %>' style="display:none;" />
                                            </td>
                                            <td>
                                                <center class="actions">
                                                    <asp:LinkButton runat="server" class="btnDelete" ID="btnDelete" CommandName="delete" CommandArgument='<%#Eval("Id")%>' OnClick="deleteSpecials_Click" OnClientClick="return confirmation('Sei sicuro di voler eliminare questa specialità?');">
                                                        <i class="icofont-basket" style="font-size:25px;"></i>
                                                    </asp:LinkButton>
                                                    <asp:LinkButton runat="server" class="btnEdit" ID="btnEdit" CommandName="edit" OnClientClick="return showInputEditing($(this));">
                                                        <i class="icofont-edit" style="font-size:20px;"></i>
                                                    </asp:LinkButton>   
                                                </center>
                                                <center class="editing" style="display:none;">
                                                    <asp:LinkButton runat="server" class="btnSave" ID="btnSave" CommandName="save" CommandArgument='<%#Eval("Id")%>' OnClick="editSpecials_Click" OnClientClick="populateHiddenFields($(this), 'specials');">
                                                        <i class="icofont-save" style="font-size:19px;"></i>
                                                    </asp:LinkButton>
                                                    <asp:LinkButton runat="server" class="btnCancel" ID="btnCancel" CommandName="cancel" OnClientClick="return showInputActions($(this));">
                                                        <i class="icofont-close" style="font-size:23px;"></i>
                                                    </asp:LinkButton>
                                                </center>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </section>
                <!-- End Specials Section -->

                 <!-- ======= Events Section ======= -->
                <section runat="server" id="eventSection" class="contact" visible="false">
                    <div class="container">
                        <div class="section-title">
                          <h2><span>Sezione</span> Eventi</h2>
                        </div>
                    </div>
                    <div class="container mt-5">
                        <div class="php-email-form">
                             <div class="form-row">
                                <div class="col-md-12 form-group">
                                    <input runat="server" type="text" name="ev_title" class="form-control" id="ev_title" placeholder="Titolo"/>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 form-group">
                                    <input runat="server" type="text" name="ev_subtitle" class="form-control" id="ev_subtitle" placeholder="Sottotitolo"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <textarea runat="server" class="form-control" name="ev_desc1" id="ev_desc1" rows="5" placeholder="Descrizione 1"></textarea>
                            </div>
                            <div class="form-group">
                                <textarea runat="server" class="form-control" name="ev_desc2" id="ev_desc2" rows="5" placeholder="Descrizione 2"></textarea>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 form-group">
                                    <input runat="server" type="text" name="ev_option1" class="form-control" id="ev_option1" placeholder="Listato 1"/>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 form-group">
                                    <input runat="server" type="text" name="ev_option2" class="form-control" id="ev_option2" placeholder="Listato 2"/>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 form-group">
                                    <input runat="server" type="text" name="ev_option3" class="form-control" id="ev_option3" placeholder="Listato 3"/>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 form-group">
                                    <input runat="server" type="text" name="ev_option4" class="form-control" id="ev_option4" placeholder="Listato 4"/>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-12 form-group">
                                    <input runat="server" type="text" name="ev_option5" class="form-control" id="ev_option5" placeholder="Listato 5"/>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-6 text-center">
                                    <label for="fileUpload_event">Carica Immagine:</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:FileUpload runat="server" class="form-control-file" ID="fileUpload_event" />
                                </div>
                            </div>
                                <div class="form-row">
                                <div class="col-md-6 text-center">
                                    <label for="ev_visible">Visibilit&aacute; Evento:</label>
                                </div>
                                <div class="col-md-6">
                                    <input type="checkbox" runat="server" id="ev_visible" />
                                </div>
                            </div>
                            <div class="text-center">
                                <asp:Button runat="server" ID="importEvent" class="btn" Text="Carica" OnClick="importEvent_Click"/>
                            </div>
                        </div>
                    </div>
                    <div class="container" style="margin-top: 3rem!important;">
                        <table id="tableEvents" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Titolo</th>
                                    <th>SottoTitolo</th>
                                    <th>Descrizione1</th>
                                    <th>Descrizione2</th>
                                    <th>Immagine</th>
                                    <th>Visibilità</th>
                                    <th>Azioni</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rpt_tableEvents" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <p><%# Eval("Title") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="ev_editTitle" CssClass="form-control" Text='<%# Eval("Title") %>' />
                                            </td>
                                            <td>
                                                <p><%# Eval("SubTitle") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="ev_editSubTitle" CssClass="form-control" Text='<%# Eval("SubTitle") %>' />
                                            </td>
                                            <td>
                                                <p><%# Eval("Description1") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="ev_editDesc1" CssClass="form-control" Text='<%# Eval("Description1") %>' />
                                            </td>
                                            <td>
                                                <p><%# Eval("Description2") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="ev_editDesc2" CssClass="form-control" Text='<%# Eval("Description2") %>' />
                                            </td>
                                             <td>
                                                <asp:Image ID="imageEvent" runat="server" Height="150" ImageUrl='<%# GetImage(Eval("Image")) %>' />
                                            </td>
                                       <%-- <td>
                                                <p><%# Eval("Option1") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="ev_editOption1" CssClass="form-control" Text='<%# Eval("Option1") %>' />
                                            </td>
                                            <td>
                                                <p><%# Eval("Option2") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="ev_editOption2" CssClass="form-control" Text='<%# Eval("Option2") %>' />
                                            </td>
                                            <td>
                                                <p><%# Eval("Option3") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="ev_editOption3" CssClass="form-control" Text='<%# Eval("Option3") %>' />
                                            </td>
                                            <td>
                                                <p><%# Eval("Option4") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="ev_editOption4" CssClass="form-control" Text='<%# Eval("Option4") %>' />
                                            </td>
                                            <td>
                                                <p><%# Eval("Option5") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="ev_editOption5" CssClass="form-control" Text='<%# Eval("Option5") %>' />
                                            </td>--%>
                                            <td class="text-center">
                                                <p><%# Eval("Visible") %></p>
                                                <asp:CheckBox ID="editVis" runat="server" Checked='<%# Convert.ToBoolean(Eval("Visible")) %>' style="display:none;" />
                                            </td>
                                            <td>
                                                <center class="actions">
                                                    <asp:LinkButton runat="server" class="btnDelete" ID="btnDelete" CommandName="delete" CommandArgument='<%#Eval("Id")%>' OnClick="deleteEvent_Click" OnClientClick="return confirmation('Sei sicuro di voler eliminare questo evento?');">
                                                        <i class="icofont-basket" style="font-size:25px;"></i>
                                                    </asp:LinkButton>
                                                    <%--<asp:LinkButton runat="server" class="btnEdit" ID="btnEdit" CommandName="edit" OnClientClick="return showInputEditing($(this));">
                                                        <i class="icofont-edit" style="font-size:20px;"></i>
                                                    </asp:LinkButton>   --%>
                                                </center>
                                                <%--<center class="editing" style="display:none;">
                                                    <asp:LinkButton runat="server" class="btnSave" ID="btnSave" CommandName="save" CommandArgument='<%#Eval("Id")%>' OnClick="editEvent_Click" OnClientClick="populateHiddenFields($(this), 'event');">
                                                        <i class="icofont-save" style="font-size:19px;"></i>
                                                    </asp:LinkButton>
                                                    <asp:LinkButton runat="server" class="btnCancel" ID="btnCancel" CommandName="cancel" OnClientClick="return showInputActions($(this));">
                                                        <i class="icofont-close" style="font-size:23px;"></i>
                                                    </asp:LinkButton>
                                                </center>--%>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </section>
                 <!-- End Events Section -->

                <!-- ======= Menu Section ======= -->
                <section runat="server" id="menuSection" class="contact" visible="false">
                    <div class="container">
                        <div class="section-title">
                          <h2><span>Menu</span> Piatti</h2>
                        </div>
                    </div>
                    <div class="container mt-5">
                        <div class="php-email-form">
                            <div class="form-row" style="margin-bottom: 1rem;">
                                <div class="col-md-6 text-center">
                                    <label for="ddlSections">Seleziona Categoria:</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:DropDownList class="form-control" runat="server" ID="ddlCategory" name="ddlCategory">
                                        <asp:ListItem Value="0">Seleziona una Categoria</asp:ListItem>
                                        <asp:ListItem Value="Antipasti">Antipasti</asp:ListItem>
                                        <asp:ListItem Value="Primi">Primi</asp:ListItem>
                                        <asp:ListItem Value="Secondi">Secondi</asp:ListItem>
                                        <asp:ListItem Value="Contorni">Contorni</asp:ListItem>
                                        <asp:ListItem Value="Pizze">Pizze</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-6 form-group">
                                    <input runat="server" type="text" name="nameFood" class="form-control" id="nameFood" placeholder="Nome Piatto"/>
                                </div>
                                <div class="col-md-6 form-group">
                                    <input runat="server" type="text" class="form-control" name="priceFood" id="priceFood" placeholder="Prezzo"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <textarea runat="server" class="form-control" name="ingredientsFood" id="ingredientsFood" rows="5" placeholder="Ingredienti"></textarea>
                            </div>
                            <div class="text-center">
                                <asp:Button runat="server" ID="importFood" class="btn" Text="Carica" OnClick="importFood_Click"/>
                            </div>
                        </div>
                    </div>
                    <div class="container" style="margin-top: 3rem!important;">
                        <input type="text" id="searchInput" class="form-control" onkeyup="searchFunction()" placeholder="Cerca per Categoria..." style="margin-bottom:1em;"/>
                        <table id="tableFood" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>Categoria</th>
                                    <th>Ingredienti</th>
                                    <th>Prezzo</th>
                                    <th>Azioni</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rpt_tableFoods" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <p><%# Eval("Name") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="editName" CssClass="form-control" Text='<%# Eval("Name") %>' />
                                            </td>
                                            <td>
                                                <p><%# Eval("Category") %></p>
                                                 <asp:DropDownList class="form-control" runat="server" ID="ddlCategoryFood" name="ddlCategoryFood" style="display:none;" SelectedValue='<%# Eval("Category") %>'>
                                                    <asp:ListItem Value="Antipasti">Antipasti</asp:ListItem>
                                                    <asp:ListItem Value="Primi">Primi</asp:ListItem>
                                                    <asp:ListItem Value="Secondi">Secondi</asp:ListItem>
                                                    <asp:ListItem Value="Contorni">Contorni</asp:ListItem>
                                                    <asp:ListItem Value="Pizze">Pizze</asp:ListItem>
                                                </asp:DropDownList> 
                                            </td>
                                            <td>
                                                <p><%# Eval("Ingredients") %></p>
                                                <asp:TextBox runat="server" style="display:none;" ID="editIngredients" CssClass="form-control" Text='<%# Eval("Ingredients") %>' />
                                            </td>
                                            <td class="text-center">
                                                <p><%# Eval("Price") %> €</p>
                                                <asp:TextBox runat="server" style="display:none;" ID="editPrice" CssClass="form-control" Text='<%# Eval("Price") %>' />
                                            </td>
                                            <td>
                                                <center class="actions">
                                                    <asp:LinkButton runat="server" class="btnDelete" ID="btnDelete" CommandName="delete" CommandArgument='<%#Eval("Id")%>' OnClick="deleteFood_Click" OnClientClick="return confirmation('Sei sicuro di voler eliminare questo piatto?');">
                                                        <i class="icofont-basket" style="font-size:25px;"></i>
                                                    </asp:LinkButton>
                                                    <asp:LinkButton runat="server" class="btnEdit" ID="btnEdit" CommandName="edit" OnClientClick="return showInputEditing($(this));">
                                                        <i class="icofont-edit" style="font-size:20px;"></i>
                                                    </asp:LinkButton>   
                                                </center>
                                                <center class="editing" style="display:none;">
                                                    <asp:LinkButton runat="server" class="btnSave" ID="btnSave" CommandName="save" CommandArgument='<%#Eval("Id")%>' OnClick="editFood_Click" OnClientClick="populateHiddenFields($(this), 'menu');">
                                                        <i class="icofont-save" style="font-size:19px;"></i>
                                                    </asp:LinkButton>
                                                    <asp:LinkButton runat="server" class="btnCancel" ID="btnCancel" CommandName="cancel" OnClientClick="return showInputActions($(this));">
                                                        <i class="icofont-close" style="font-size:23px;"></i>
                                                    </asp:LinkButton>
                                                </center>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </section>
                <!-- End Menu Section -->

                <!-- ======= Error Section ======= -->
                <section>
                    <div class="container">
                        <div class="text-center">
                            <p style="color:red" id="error" runat="server"></p>
                        </div>
                    </div>
                </section>
                <!-- End Error Section -->

                <!-- ======= Success Section ======= -->
                <section>
                    <div class="container">
                        <div class="text-center">
                            <p style="color:green" id="success" runat="server"></p>
                        </div>
                    </div>
                </section>
                <!-- End Success Section -->

                <input type="hidden" id="hidden_desc" runat="server" />
                <input type="hidden" id="hidden_vis" runat="server" />

                <input type="hidden" id="hidden_name" runat="server" />
                <input type="hidden" id="hidden_category" runat="server" />
                <input type="hidden" id="hidden_ingredients" runat="server" />
                <input type="hidden" id="hidden_price" runat="server" />

                <input type="hidden" id="hidden_nav_spec" runat="server" />
                <input type="hidden" id="hidden_title_spec" runat="server" />
                <input type="hidden" id="hidden_desc_spec" runat="server" />
                <input type="hidden" id="hidden_text_spec" runat="server" />
                <input type="hidden" id="hidden_vis_spec" runat="server" />

            </main>
            <!-- End #main -->

            <!-- ======= Footer ======= -->
            <footer id="footer">
                <div class="container">
                    <h3>La Vecchia Lira</h3>
                    <p>Eccellenza nel settore della ristorazione da oltre 15 anni.</p>
                    <div class="social-links">
                        <a href="https://www.facebook.com/lavecchialira/" class="facebook"><i class="bx bxl-facebook"></i></a>
                    </div>
                    <div class="copyright">
                        &copy; Copyright <strong><span>Delicious</span></strong>. All Rights Reserved
                    </div>
                    <div class="credits">
                        <!-- All the links in the footer should remain intact. -->
                        <!-- You can delete the links only if you purchased the pro version. -->
                        <!-- Licensing information: https://bootstrapmade.com/license/ -->
                        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/delicious-free-restaurant-bootstrap-theme/ -->
                        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                    </div>
                </div>
            </footer>
            <!-- End Footer -->

            <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

            <!-- Vendor JS Files -->
            <script src="../Library/vendor/jquery/jquery.min.js"></script>
            <script src="../Library/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="../Library/vendor/jquery.easing/jquery.easing.min.js"></script>
            <script src="../Library/vendor/php-email-form/validate.js"></script>
            <script src="../Library/vendor/jquery-sticky/jquery.sticky.js"></script>
            <script src="../Library/vendor/isotope-layout/isotope.pkgd.min.js"></script>
            <script src="../Library/vendor/venobox/venobox.min.js"></script>
            <script src="../Library/vendor/owl.carousel/owl.carousel.min.js"></script>

            <!-- Template Main JS File -->
            <script src="../Library/js/main.js"></script>

            <script type="text/javascript">

                function showInputEditing(element)
                {
                    element.parent().parent().parent().find('input').show();
                    element.parent().parent().parent().find('span').show();
                    element.parent().parent().parent().find('p').hide();
                    element.parent().parent().parent().find('select').show();

                    element.parent().parent().find('.actions').hide();
                    element.parent().parent().find('.editing').show();

                    return false;
                }

                function searchFunction()
                {
                    // Declare variables
                    var input, filter, table, tr, td, p, i, txtValue;
                    input = document.getElementById("searchInput");
                    filter = input.value.toUpperCase();
                    table = document.getElementById("tableFood");
                    tr = table.getElementsByTagName("tr");

                    // Loop through all table rows, and hide those who don't match the search query
                    for (i = 0; i < tr.length; i++)
                    {
                        if (i == 0)
                            continue;

                        td = tr[i].getElementsByTagName("td")[1];
                        if (td)
                        {
                            p = td.getElementsByTagName("p")[0];

                            txtValue = p.textContent || p.innerText;
                            if (txtValue.toUpperCase().indexOf(filter) > -1)
                            {
                                tr[i].style.display = "";
                            }
                            else
                            {
                                tr[i].style.display = "none";
                            }
                        }
                    }
                }

                function showInputActions(element)
                {
                    element.parent().parent().parent().find('input').hide();
                    element.parent().parent().parent().find('span').hide();
                    element.parent().parent().parent().find('select').hide();
                    element.parent().parent().parent().find('p').show();
                    element.parent().parent().find('.actions').show();
                    element.parent().parent().find('.editing').hide();

                    return false;
                }

                function populateHiddenFields(element, type)
                {
                    if (type == "gallery") {
                        var inputs = element.parent().parent().parent().find('input');
                        for (var i = 0; i < inputs.length; i++) {
                            if (inputs[i].hasAttribute("checked") || inputs[i].type == "checkbox") {
                                $("#hidden_vis").val(inputs[i].checked);
                            }
                            else {
                                $("#hidden_desc").val(inputs[i].value);
                            }
                        }
                    }
                    else if (type == "menu") {
                        var select = element.parent().parent().parent().find('select');
                        $("#hidden_category").val(select[0].value);
                        var inputs = element.parent().parent().parent().find('input');
                        for (var i = 0; i < inputs.length; i++)
                        {
                            var id = inputs[i].id;
                            if (id.indexOf("editName") != -1) {
                                $("#hidden_name").val(inputs[i].value);
                            }
                            else if (id.indexOf("editIngredients") != -1) {
                                $("#hidden_ingredients").val(inputs[i].value);
                            }
                            else if (id.indexOf("editPrice") != -1) {
                                $("#hidden_price").val(inputs[i].value);
                            }
                        }
                    }
                    else if (type == "specials")
                    {
                        var inputs = element.parent().parent().parent().find('input');
                        for (var i = 0; i < inputs.length; i++)
                        {
                            var id = inputs[i].id;
                            if (inputs[i].hasAttribute("checked") || inputs[i].type == "checkbox") {
                                $("#hidden_vis_spec").val(inputs[i].checked);
                            }
                            else if(id.indexOf("editNav") != -1){
                                $("#hidden_nav_spec").val(inputs[i].value);
                            }
                            else if(id.indexOf("editTitle") != -1){
                                $("#hidden_title_spec").val(inputs[i].value);
                            }
                            else if(id.indexOf("editDesc") != -1){
                                $("#hidden_desc_spec").val(inputs[i].value);
                            }
                            else if(id.indexOf("editText") != -1){
                                $("#hidden_text_spec").val(inputs[i].value);
                            }
                        }
                    }
                }

                function confirmation(text)
                {
                    return confirm(text);   
                }

            </script>
        </form>
    </body>
</html>
