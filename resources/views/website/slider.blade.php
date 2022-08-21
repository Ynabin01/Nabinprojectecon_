<section class="banner-section banner-one">
    @if(isset($sliders) && $sliders!=null)
    <section class="banner-section banner-one">

        <div class="banner-carousel owl-theme owl-carousel">
            <!-- Slide Item -->
            @foreach($sliders as $slider)
            <div class="slide-item">
                <div class="image-layer" style="background-image: url({{$slider->banner_image}});">
                </div>
                <div class="auto-container">
                    <div class="content-box">
                        <div class="content">
                            <div class="inner">
                                <h1>
                                    <?php echo "$slider->short_content" ?> </h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          @endforeach 
    
        </div>
    </section>
    
    @endif
   
</section>
