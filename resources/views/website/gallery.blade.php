@extends("layouts.master")

@section('content')
<section class="page-header">
    <div class="container">
        <div class="row align-items-center">
        <div class="col-md-6">
        <h6>Gallery</h6>
        </div>
        <div class="col-md-6">
        <ul class="thm-breadcrumb list-unstyled">
            <li><a href="/">Home</a></li>
            <li><span>Gallery</span></li>
        </ul>
        </div>
        </div>
    </div>
</section>

<section class="gallery_two">
    <div class="container">
        <div class="row">
            <div id="filter-id" class="col-md-12">
                <button type="button" class="btn btn-outline-black waves-effect filter active" data-rel="all">All</button>
                <button type="button" class="btn btn-outline-black waves-effect filter" data-rel="1">Event</button>
                <button type="button" class="btn btn-outline-black waves-effect filter" data-rel="2">picnic 2021</button>
                <button type="button" class="btn btn-outline-black waves-effect filter" data-rel="3">Team</button>
            </div>
        </div>
        <div class="row" id="lightgallery">
            <div class="col-xl-4 col-lg-6 col-md-6 all 1">
                <div class="gallery_two_single">
                    <div class="gallery_two_image">
                        <img src="website/images/gallery-img.jpg" alt="">
                        <div class="gallery_two_hover_box">
                            <div class="gallery_two_icon">
                                <a class="img-popup" href="website/images/gallery-img.jpg"><span class="icon-plus-symbol"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 col-md-6 all 2">
                <div class="gallery_two_single">
                    <div class="gallery_two_image">
                        <img src="website/images/gallery-img.jpg" alt="">
                        <div class="gallery_two_hover_box">
                            <div class="gallery_two_icon">
                                <a class="img-popup" href="website/images/gallery-img.jpg"><span class="icon-plus-symbol"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 col-md-6 all 1">
                <div class="gallery_two_single">
                    <div class="gallery_two_image">
                        <img src="website/images/gallery-img.jpg" alt="">
                        <div class="gallery_two_hover_box">
                            <div class="gallery_two_icon">
                                <a class="img-popup" href="website/images/gallery-img.jpg"><span class="icon-plus-symbol"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 col-md-6 all 3">
                <div class="gallery_two_single">
                    <div class="gallery_two_image">
                        <img src="website/images/gallery-img.jpg" alt="">
                        <div class="gallery_two_hover_box">
                            <div class="gallery_two_icon">
                                <a class="img-popup" href="website/images/gallery-img.jpg"><span class="icon-plus-symbol"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 col-md-6 all 1">
                <div class="gallery_two_single">
                    <div class="gallery_two_image">
                        <img src="website/images/gallery-img.jpg" alt="">
                        <div class="gallery_two_hover_box">
                            <div class="gallery_two_icon">
                                <a class="img-popup" href="website/images/gallery-img.jpg"><span class="icon-plus-symbol"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 col-md-6 all 2">
                <div class="gallery_two_single">
                    <div class="gallery_two_image">
                        <img src="website/images/gallery-img.jpg" alt="">
                        <div class="gallery_two_hover_box">
                            <div class="gallery_two_icon">
                                <a class="img-popup" href="website/images/gallery-img.jpg"><span class="icon-plus-symbol"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-6 col-md-6 all 1">
                <div class="gallery_two_single">
                    <div class="gallery_two_image">
                        <img src="website/images/gallery-img.jpg" alt="">
                        <div class="gallery_two_hover_box">
                            <div class="gallery_two_icon">
                                <a class="img-popup" href="website/images/gallery-img.jpg"><span class="icon-plus-symbol"></span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
