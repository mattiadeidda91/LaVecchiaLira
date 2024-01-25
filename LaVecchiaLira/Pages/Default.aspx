<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LaVecchiaLira.Pages.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="it">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />

        <title>Ristorante Pizzeria La Vecchia Lira</title>

        <meta content="La Vechia Lira di Givoletto vi incanterà con la sua cuncina mediterranea ricca e gustosa. Nel nostro locale potrete assaporare la nostra favolosa pizza a forno a legna. Saremo lieti di ospitarvi nel nostro locale accogliente per una colazione oppure per un pranzo o una cena a base di carne o pesce che non dimenticherete! Utilizzate il nostro Wi-Fi gratuito per condividere le vostre foto. Per tenere occupati i bambini prima e dopo il pasto, abbiamo un’area bambini ben attrezzata con tante possibilità di svago." name="description"/>
        <meta content="la vecchia lira, ristorante, trattoria, pizzeria, pizza, carne, pesce fresco, asporto, domicilio, givoletto, san gillio, bar, cucina mediterranea, dehor estivo, area giochi, area bambini, area bimbi" name="keywords"/>
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

         <!-- Cookiebot JS File -->
        <script id="Cookiebot" src="https://consent.cookiebot.com/uc.js" data-cbid="760978cf-07e1-46d7-8a39-86470511beb6" data-blockingmode="auto" type="text/javascript"></script>

        <!-- =======================================================
        * Template Name: Delicious - v2.2.1
        * Template URL: https://bootstrapmade.com/delicious-free-restaurant-bootstrap-theme/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>
    <body>
        <form id="form1" runat="server">
            <!-- ======= Top Bar ======= -->
            <section id="topbar" class="d-none d-lg-flex align-items-center fixed-top topbar-transparent">
                <div class="container text-right">
                    <i class="icofont-phone"></i> +39 011 96 26 927
                    <i class="icofont-clock-time icofont-rotate-180"></i> Lun-Ven: 12:00 - 14:30 / 19:00 - 22:00
                    <br />
                    <i class="icofont-clock-time icofont-rotate-180"></i> Sab: 19:00 - 22:00 Dom: 12:00 - 15:00 / 19:00 - 22:00
                </div>
            </section>

            <!-- ======= Header ======= -->
            <header id="header" class="fixed-top d-flex align-items-center header-transparent">
                <div class="container d-flex align-items-center">

                    <div class="logo mr-auto">
                        <h1 class="text-light"><a href="Default.aspx"><span>La Vecchia Lira</span></a></h1>
                        <!-- Uncomment below if you prefer to use an image logo -->
                        <%--<a href="Default.aspx"><img src="../Library/img/logo2.jpg" alt="logo" class="img-fluid"/></a>--%>
                    </div>

                    <nav class="nav-menu d-none d-lg-block">
                        <ul>
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="#about">Chi Siamo</a></li>
                            <li><a href="#menu">Menu</a></li>
                            <li><a href="#specials">Offerte Speciali</a></li>
                            <li><a href="#events">Eventi</a></li>
                            <li><a href="#gallery">Galleria</a></li>
                            <li><a href="#contact">Contatti</a></li>
                        </ul>
                    </nav>
                    <!-- .nav-menu -->

                </div>
            </header>
            <!-- End Header -->

            <!-- ======= Hero Section ======= -->
            <section id="hero">
                <div class="hero-container">
                    <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

                        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

                        <div class="carousel-inner" role="listbox">

                            <!-- Slide 1 -->
                            <div class="carousel-item active" style="background: url(../Library/img/slide/slide-1.jpg);">
                                <div class="carousel-container">
                                    <div class="carousel-content">
                                        <h2 class="animate__animated animate__fadeInDown"><span>La Vecchia</span> Lira</h2>
                                        <p class="animate__animated animate__fadeInUp">Eccellenza nel settore della ristorazione da oltre 15 anni.</p>
                                        <div>
                                            <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Menu</a>
                                            <a href="#contact" class="btn-book animate__animated animate__fadeInUp scrollto">Contatti</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Slide 2 -->
                            <div class="carousel-item" style="background: url(../Library/img/slide/slide-2.jpg);">
                                <div class="carousel-container">
                                    <div class="carousel-content">
                                        <h2 class="animate__animated animate__fadeInDown"><span>La Vecchia</span> Lira</h2>
                                        <p class="animate__animated animate__fadeInUp">Materie prime scelte e lavorate con la massima cura.</p>
                                        <div>
                                            <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Menu</a>
                                            <a href="#contact" class="btn-book animate__animated animate__fadeInUp scrollto">Contatti</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Slide 3 -->
                            <div class="carousel-item" style="background: url(../Library/img/slide/slide-4.jpg);">
                                <div class="carousel-background"><img src="../Library/img/slide/slide-4.jpg" alt=""/></div>
                                <div class="carousel-container">
                                    <div class="carousel-content">
                                        <h2 class="animate__animated animate__fadeInDown"><span>La Vecchia</span> Lira</h2>
                                        <p class="animate__animated animate__fadeInUp">Amanti del buon cibo e della tradizione.</p>
                                        <div>
                                            <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Menu</a>
                                            <a href="#contact" class="btn-book animate__animated animate__fadeInUp scrollto">Contatti</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon icofont-simple-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>

                        <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
                            <span class="carousel-control-next-icon icofont-simple-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>

                    </div>
                </div>
            </section>
            <!-- End Hero -->

            <main id="main">

                <!-- ======= About Section ======= -->
                <section id="about" class="about">
                    <div class="container-fluid">

                        <div class="row">

                            <!--<div class="col-lg-5 align-items-stretch video-box" style='background-image: url("../Library/img/about.jpg");'>
                                <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
                            </div>-->
                            <div class="col-lg-5 align-items-stretch video-box">
                                <img src="https://cdn.website.dish.co/media/5c/dd/2678380/La-Vecchia-Lira-Trattoria-Pizzeria-13254398-1021288021295164-5644667353619155354-n.jpg" class="img-fluid" alt="" />
                            </div>

                            <div class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch">

                                <div class="content">
                                    <h3>Qualcosa su di noi... <strong>Franca e Bruno</strong></h3>
                                    <p>
                                        Trattoria Pizzeria a conduzione familiare, siamo nel settore della Ristorazione da oltre 15 anni.
                                    </p>
                                    <p class="font-italic">
                                        Franca si occupa della cucina con tantissima esperienza nel settore... avete piacere di organizzare una cena a tema particolare??? parlatene con lei e resterete stupite dalla varietà di scelte di menù che avrà da proporvi!!!
                                    </p>
                                    <!--<ul>
                                        <li><i class="bx bx-check-double"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                                        <li><i class="bx bx-check-double"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                                        <li><i class="bx bx-check-double"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
                                    </ul>-->
                                    <p>
                                        Bruno gestisce la nostra pizzeria, con tanta passione e fantasia... è sempre pronto a sperimentare nuove pizze da farvi gustare!!! Oltre alle sue squisite farinate...
                                    </p>
                                </div>

                            </div>

                        </div>

                    </div>
                </section>
                <!-- End About Section -->

                <!-- ======= Whu Us Section ======= -->
                <section id="why-us" class="why-us">
                    <div class="container">

                        <div class="section-title">
                            <h2>Perch&eacute; Scegliere <span>La Vecchia Lira</span></h2>
                            <p>Ecco tre validi motivi per venire a trovarci e gustare le nostre ottime proposte.</p>
                        </div>

                        <div class="row">

                            <div class="col-lg-4">
                                <div class="box">
                                    <span>01</span>
                                    <h4>Pizza</h4>
                                    <p>Impasto leggero e a lunga lievitazione che caratterizza l'alta digeribilit&aacute;</p>
                                </div>
                            </div>

                            <div class="col-lg-4 mt-4 mt-lg-0">
                                <div class="box">
                                    <span>02</span>
                                    <h4>Cucina Mediterranea</h4>
                                    <p>Antipasti, primi e secondi a base di carne e pesce di prima qualit&aacute;</p>
                                </div>
                            </div>

                            <div class="col-lg-4 mt-4 mt-lg-0">
                                <div class="box">
                                    <span>03</span>
                                    <h4>Menu personalizzati</h4>
                                    <p>Sempre disponibili a venire incontro a qualunque richiesta del Cliente</p>
                                </div>
                            </div>

                        </div>

                    </div>
                </section>
                <!-- End Whu Us Section -->

                <!-- ======= Menu Section ======= -->
                <section id="menu" class="menu">
                    <div class="container">

                        <div class="section-title">
                            <h2>Prova il nostro <span>Menu</span></h2>
                        </div>

                        <div class="row">
                            <div class="col-lg-12 d-flex justify-content-center">
                                <ul id="menu-flters">
                                    <%--<li data-filter="*" class="filter-active">Mostra Tutti</li>--%>
                                    <li data-filter=".Antipasti" class="filter-active">Antipasti</li>
                                    <li data-filter=".Primi">Primi</li>
                                    <li data-filter=".Secondi">Secondi</li>
                                    <li data-filter=".Pizze">Pizze</li>
                                </ul>
                            </div>
                        </div>

                        <div class="row menu-container">
                            <asp:Repeater ID="rpt_menu" runat="server">
                                <ItemTemplate>
                                    <div class="col-lg-6 menu-item <%# Eval("Category") %>">
                                        <div class="menu-content">
                                            <a href="#"><%# Eval("Name") %></a><span>€<%# Eval("Price") %></span>
                                        </div>
                                        <div class="menu-ingredients">
                                            <%# Eval("Ingredients") %>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>

                        <div class="text-center mt-5">
                            <a href="../Library/pdf/LaVecchiaLira-Menu.pdf" target="_blank" name="download" id="download" class="btn">Scarica Menu</a>
                        </div>

                    </div>
                </section>
                <!-- End Menu Section -->

                <!-- ======= Specials Section ======= -->
                <section id="specials" class="specials">
                    <div class="container">

                        <div class="section-title">
                            <h2>Le Nostre Offerte<span> Speciali</span></h2>
                            <p>Alcune delle nostre proposte di menu fisso, offerte e opportunit&aacute; da non perdere.</p>
                        </div>

                        <div class="row">
                            <div class="col-lg-3">
                                <ul class="nav nav-tabs flex-column">
                                    <asp:Repeater ID="rpt_specials_nav" runat="server">
                                        <ItemTemplate>
                                            <li class="nav-item">
                                                <a class="nav-link <%# Container.ItemIndex == 0 ? "active show" : ""  %>" data-toggle="tab" href="#tab-<%# Eval("Id") %>"><%# Eval("Navigation") %></a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                            <div class="col-lg-9 mt-4 mt-lg-0">
                                <div class="tab-content">

                                     <asp:Repeater ID="rpt_specials" runat="server">
                                        <ItemTemplate>
                                            <div class="tab-pane <%# Container.ItemIndex == 0 ? "active show" : ""  %>" id="tab-<%# Eval("Id") %>">
                                                <div class="row">
                                                    <div class="col-lg-8 details order-2 order-lg-1">
                                                        <h3><%# Eval("Title") %></h3>
                                                        <p class="font-italic"><%# Eval("Description") %></p>
                                                        <p><%# Eval("Text") %></p>
                                                    </div>
                                                    <div class="col-lg-4 text-center order-1 order-lg-2">
                                                        <asp:Image runat="server" ImageUrl='<%# GetImage(Eval("Image")) %>' alt='<%# GetAlt(Eval("Id"), "specialita") %>' class="img-fluid" /> 
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- End Specials Section -->

                <!-- ======= Events Section ======= -->
                <section id="events" class="events">
                    <div class="container">

                        <div class="section-title">
                            <h2>I Nostri <span>Eventi</span></h2>
                        </div>
                        <div class="owl-carousel events-carousel">
                            
                            <asp:Repeater ID="rpt_events" runat="server">
                                <ItemTemplate>
                                    <div class="row event-item">
                                        <div class="col-lg-6">
                                            <asp:Image runat="server" ImageUrl='<%# GetImage(Eval("Image")) %>' alt='<%# GetAlt(Eval("Id"), "evento") %>' class="img-fluid" /> 
                                        </div>
                                        <div class="col-lg-6 pt-4 pt-lg-0 content">
                                            <h3><%# Eval("Title") %></h3>
                                            <div class="price">
                                                <p><span><%# Eval("SubTitle") %></span></p>
                                            </div>
                                            <p class="font-italic"><%# Eval("Description1") %></p>
                                            <ul>
                                                <li class='<%# CheckValue(Eval("Option1")) %>'><i class="icofont-check-circled"></i> <%# Eval("Option1") %></li>
                                                <li class='<%# CheckValue(Eval("Option2")) %>'><i class="icofont-check-circled"></i> <%# Eval("Option2") %></li>
                                                <li class='<%# CheckValue(Eval("Option3")) %>'><i class="icofont-check-circled"></i> <%# Eval("Option3") %></li>
                                                <li class='<%# CheckValue(Eval("Option4")) %>'><i class="icofont-check-circled"></i> <%# Eval("Option4") %></li>
                                                <li class='<%# CheckValue(Eval("Option5")) %>'><i class="icofont-check-circled"></i> <%# Eval("Option5") %></li>
                                            </ul>
                                            <p><%# Eval("Description2") %></p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                        </div>
                    </div>
                </section>
                <!-- End Events Section -->

                <!-- ======= Gallery Section ======= -->
                <section id="gallery" class="gallery">
                    <div class="container-fluid">

                        <div class="section-title">
                            <h2>Galleria <span>Foto</span></h2>
                            <p>Una carrellata di foto dei nostri piatti e del nostri locale</p>
                        </div>

                        <div class="row no-gutters">
                            <asp:Repeater ID="rpt_gallery" runat="server">
                                    <ItemTemplate>
                                        <div class="col-lg-3 col-md-4">
                                            <div class="gallery-item">
                                               <a href='<%# GetImage(Eval("Image")) %>' class="venobox" data-gall="gallery-item">
                                                    <asp:Image runat="server" ImageUrl='<%# GetImage(Eval("Image")) %>' alt='<%# Eval("Description") %>' class="img-fluid" /> 
                                                </a>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                            </asp:Repeater>
                        </div>

                    </div>
                </section>
                <!-- End Gallery Section -->

                <!-- ======= Testimonials Section ======= -->
                <section id="testimonials" class="testimonials">
                    <div class="container">

                        <div class="owl-carousel testimonials-carousel">

                            <div class="testimonial-item">
                                <img src="../Library/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="testimonials-2"/>
                                <h3>Erika</h3>
                                <div class="stars">
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                </div>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    Simpatia e cortesia nel servizio accompagnano un'ottima pizza da forno a legna. Il tutto è ora arricchito dallo splendido posto. Da tornare assolutamente.
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>

                            <div class="testimonial-item">
                                <img src="../Library/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="testimonials-1"/>
                                <h3>Davide</h3>
                                <div class="stars">
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                </div>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    La signora Franca vi accoglierà sempre con estrema gentilezza, suo marito vi delizierà il palato con le sue pizze buonissime, bravi!!!
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>

                            <div class="testimonial-item">
                                <img src="../Library/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="testimonials-5"/>
                                <h3>Alessandro</h3>
                                <div class="stars">
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                </div>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    La pizza e la cucina sono veramente buone, il prezzo davvero onesto La vita è troppo breve per non provare la cucina de La Vecchia Lira!
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>

                            <div class="testimonial-item">
                                <img src="../Library/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="testimonials-4"/>
                                <h3>Lorenzo</h3>
                                <div class="stars">
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                </div>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    Buonissimo cibo squisito in più personale molto cortese e locale molto accogliente. Voto 5 stelline!
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>

                            <div class="testimonial-item">
                                <img src="../Library/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="testimonials-3"/>
                                <h3>Lucia</h3>
                                <div class="stars">
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                    <i class="icofont-star"></i>
                                </div>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    Sono andata con la mia famiglia e mi sono trovata benissimo, sia per quanto riguarda il servizio sia per il cibo. Ci ritornerò sicuramente.
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>

                        </div>

                    </div>
                </section>
                <!-- End Testimonials Section -->

                <!-- ======= Contact Section ======= -->
                <section id="contact" class="contact">
                    <div class="container">
                        <div class="section-title">
                            <h2><span>Nostri</span> Contatti</h2>
                            <p>Per prenotazioni, eventi o informazioni, non esitare a contattarci.</p>
                        </div>
                    </div>

                    <div class="container mt-5">
                        <div class="info-wrap">
                            <div class="row">
                                <div class="col-lg-3 col-md-6 info">
                                    <i class="icofont-google-map"></i>
                                    <h4>Posizione:</h4>
                                    <p>Via S. Secondo, 35<br/>10040 Givoletto TO</p>
                                </div>

                                <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
                                    <i class="icofont-clock-time icofont-rotate-90"></i>
                                    <h4>Orari di Apertura:</h4>
                                    <p>
                                        Lun-Ven: 12:00 - 14:30 <br />
                                        Lun-Ven: 19:00 - 22:00<br/>
                                        Sab: 19:00 - 22:00 <br/>
                                        Dom: 12:00 - 15:00 <br />
                                        Dom: 19:00 - 22:00
                                    </p>
                                </div>

                                <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
                                    <i class="icofont-envelope"></i>
                                    <h4>Email:</h4>
                                    <p>lavecchialira@libero.it</p>
                                </div>

                                <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
                                    <i class="icofont-phone"></i>
                                    <h4>Telefono:</h4>
                                    <p>+39 011 96 26 927</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d2813.3088816775094!2d7.4930896!3d45.1605947!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4788042b8cf3d457%3A0x3b53913b0f513773!2sLa%20Vecchia%20Lira!5e0!3m2!1sit!2sit!4v1619456795248!5m2!1sit!2sit" style="border:0; width: 100%; height: 350px;" allowfullscreen loading="lazy"></iframe>
                    </div>
                    
                </section>
                <!-- End Contact Section -->

            </main>
            <!-- End #main -->

            <!-- ======= Footer ======= -->
            <footer id="footer">
                <div class="container">
                    <h3>La Vecchia Lira</h3>
                    <p>Eccellenza nel settore della ristorazione da oltre 15 anni.</p>
                    <div class="social-links">
                        <%--<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>--%>
                        <a href="https://www.facebook.com/lavecchialira/" class="facebook"><i class="bx bxl-facebook"></i></a>
                       <%-- <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>--%>
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
            <script src="../Library/vendor/jquery-sticky/jquery.sticky.js"></script>
            <script src="../Library/vendor/isotope-layout/isotope.pkgd.min.js"></script>
            <script src="../Library/vendor/venobox/venobox.min.js"></script>
            <script src="../Library/vendor/owl.carousel/owl.carousel.min.js"></script>

            <!-- Template Main JS File -->
            <script src="../Library/js/main.js"></script>
        </form>
    </body>
</html>
