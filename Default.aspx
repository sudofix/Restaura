<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Default</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="text-align:center;">
    <div class="jumbotron">
        <img src="images/fullLogo1.png" height="400"/>
    </div>

                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="margin-bottom : 10px;">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" height="650" src="images/b21dfd05-27b7-11e8-add5-0242ac110011.jpg" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" height="650" src="images/b23425f5-27b7-11e8-add5-0242ac110011.jpg" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" height="650" src="images/b72329b4-2225-11e8-924e-0242ac110011.jpg" alt="Third slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" height="650" src="images/b7232c02-2225-11e8-924e-0242ac110011.jpg" alt="Third slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" height="650" src="images/c011aaa5-b3a0-4d4b-b767-ebe66779bf66.jpg" alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
        <hr />
                <div class="center" >
                    <div class="row">
                        <div class="col-lg-4">
                            <img class="img-circle" src="images/Manhattan-Drink-IG.jpg" width="250" height="250" />
                            <h2>Drinks</h2>
                            <p>عرض خاص ولفترة محدودة ..... اى مشروب ب 10 جنيه .. ايوة بجد اى مشروب ب 10 جنيه .. يا بلاش .. يلا بسرعة الحق العرض</p>
                            <p><a class="btn btn-default" href="drinks.aspx" role="button">View &raquo;</a></p>
                        </div>
                        <div class="col-lg-4">
                            <img class="img-circle" src="images/easy-pork-chop-sheet-pan-dinner-fbig1.jpg" width="250" height="250" />
                            <h2>Dinner</h2>
                            <p>عرض خاص برضو بس غير العرض الاولانى يعنى .. اى غدا ب 20 جنيه .. شورما .. حمام .. فراخ .. اى حاجة .. هات صحابك وتعالوا اتغدوا .. بس حد فيكم يكون معاه رصيد عشان يبقى يكلم الاسعاف</p>
                            <p><a class="btn btn-default" href="dinner.aspx" role="button">View &raquo;</a></p>
                        </div>
                        <div class="col-lg-4">
                            <img class="img-circle" src="images/piggy-dessertBLOG.jpg"  width="250" height="250" />
                            <h2>Dessert</h2>
                            <p>اى حلو ب 15 جنيه .. بس كده مش لاقى حاجة تانية اكتبها</p>
                            <p><a class="btn btn-default" href="dessert.aspx" role="button">View &raquo;</a></p>
                        </div>
                    </div>
                </div>

            </div>
</asp:Content>

