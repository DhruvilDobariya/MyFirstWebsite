<%@ Page Title="" Language="C#" MasterPageFile="~/Content/Darshan.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="DarshanWebsite_Home" %>

<asp:Content runat="server" ID="cHead" ContentPlaceHolderID="cphHead"></asp:Content>
<asp:Content runat="server" ID="cContent" ContentPlaceHolderID="cphContent">
    <div class="row">
        <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="10000">
                    <img src="https://gtu.darshan.ac.in/Upload/Slider/Slide_1.jpg?V=1" class="d-block w-100" alt="..." style="height: 750px">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="https://gtu.darshan.ac.in/Upload/Slider/Slide_2.jpg?V=1" class="d-block w-100" alt="..." style="height: 750px">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://gtu.darshan.ac.in/Upload/Slider/Slide_3.jpg?V=1" class="d-block w-100" alt="..." style="height: 750px">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://gtu.darshan.ac.in/Upload/Slider/Slide_4.jpg?V=1" class="d-block w-100" alt="..." style="height: 750px">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://gtu.darshan.ac.in/Upload/Slider/Slide_5.jpg?V=1" class="d-block w-100" alt="..." style="height: 750px">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://gtu.darshan.ac.in/Upload/Slider/Slide_6.jpg?V=1" class="d-block w-100" alt="..." style="height: 750px">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://gtu.darshan.ac.in/Upload/Slider/Slide_7.jpg?V=1" class="d-block w-100" alt="..." style="height: 750px">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://gtu.darshan.ac.in/Upload/Slider/Slide_8.jpg?V=1" class="d-block w-100" alt="..." style="height: 750px">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <div class="row bg-dark text-light p-4">
        <div class="col-md-3 text-center">
            <i class="fas fa-user-graduate" style="font-size: 40px;color:#72c02c;"></i>
            <p style="font-size: 2.5rem">8600+</p>
            <h4 style="font-weight: 300;">
                STUDENTS 
                <br />
                SHOWN FAITH IN US
            </h4>
        </div>
        <div class="col-md-3 text-center">
            <i class="far fa-building" style="font-size: 40px;color:#72c02c;"></i>
            <p style="font-size: 2.5rem">22 Acre</p>
            <h4 style="font-weight: 300;">
                WORLD CLASS 
                <br />
                INFRASTRUCTURE
            </h4>
        </div>
        <div class="col-md-3 text-center">
            <i class="fas fa-industry" style="font-size: 40px;color:#72c02c;"></i>
            <p style="font-size: 2.5rem">125+</p>
            <h4 style="font-weight: 300;">
                CONSULTANCY / RESEARCH 
                <br />
                PROJECTS
            </h4>
        </div>
        <div class="col-md-3 text-center">
            <i class="fas fa-briefcase" style="font-size: 40px;color:#72c02c;"></i>
            <p style="font-size: 2.5rem">87 %</p>
            <h4 style="font-weight: 300;">
                PLACEMENT 
                <br />
                OF 2014-18 BATCH
            </h4>
        </div>

    </div>
    <div class="row" style="background-color: #eee">
        <p class="d-flex justify-content-center p-4 pb-0" style="color: #72c02c; font-weight: 700; font-size: 1rem;">Admission - 2020</p>
        <h2 class="d-flex justify-content-center">Information Booklets</h2>
        <div class="row justify-content-evenly m-2 my-3 mb-5">
            <div class="card p-0" style="width: 18rem;">
                <img src="https://gtu.darshan.ac.in//admission/2020/A_Group_Admission.png" class="card-img-top" alt="...">
                <div class="card-body bg-dark text-light rounded-bottom">
                    <p class="card-text text-center">Group-A Admission Ready Reckoner</p>
                </div>
            </div>
            <div class="card p-0" style="width: 18rem;">
                <img src="https://gtu.darshan.ac.in//admission/2020/B_Group_Admission.png" class="card-img-top" alt="...">
                <div class="card-body bg-dark text-light rounded-bottom">
                    <p class="card-text text-center">Group-B Admission Ready Reckoner</p>
                </div>
            </div>
            <div class="card p-0" style="width: 18rem;">
                <img src="https://gtu.darshan.ac.in/admission/2019/Man_ki_Baat_Interview_With_DhamsaniyaSir.jpg" class="card-img-top" alt="...">
                <div class="card-body bg-dark text-light rounded-bottom">
                    <p class="card-text text-center">Man ki baat with Dhamsaniya sir</p>
                </div>
            </div>
            <div class="card p-0" style="width: 18rem;">
                <img src="https://gtu.darshan.ac.in/Upload/DIET/Brochure/DIET_College_Brochure.jpg" class="card-img-top" alt="...">
                <div class="card-body bg-dark text-light rounded-bottom">
                    <p class="card-text text-center">College Brochure</p>
                </div>
            </div>
            <div class="card p-0" style="width: 18rem;">
                <img src="https://gtu.darshan.ac.in//admission/2020/Brochure-Computer-Front.png" class="card-img-top" alt="...">
                <div class="card-body bg-dark text-light rounded-bottom">
                    <p class="card-text text-center">Brochure Computer Engineering Department</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

