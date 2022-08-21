<section class="about_one">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-6 col-lg-6">
                <div class="block-title text-left">
                    <p>ABOUT</p>
                    <h3>{{$about->caption ?? ''}}</h3>
                </div>
                <div class="about_content">
                    <div class="text">
                        <p>
                            {{$about->short_content ?? ''}}    
                        </p>
                    </div>
                    <div class="about1__button-block">
                        <a href="inner.html" class="thm-btn about_one__btn">Read More</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6">
                <div class="about1_img">
                    <img src="{{$about->banner_image}}" alt="">
                </div>
            </div>
        </div>
    </div>
</section>
