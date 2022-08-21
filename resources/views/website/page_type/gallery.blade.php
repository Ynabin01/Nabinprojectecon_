@extends("layouts.master")
@section("content")
		

<section class="page-title page-title-layout5 bg-img" style="background-image: url(/website/images/6.jpg) !important; background-size: cover; background-position: center center; padding-top: 120px;">
      <div class="container">
        <div class="row">
          <div class="col-12 d-flex justify-content-between flex-wrap align-items-center">
            <h1 class="pagetitle__heading my-3">{{$slug_detail->caption ?? $slug1}}</h1>
            <nav>
              <ol class="breadcrumb my-3">
                <li class="breadcrumb-item"><a href="#">{{$slug1}}</a></li>
                <li class="breadcrumb-item">{{$slug_detail->nav_name ?? ''}}</li>
              </ol>
            </nav>
          </div><!-- /.col-12 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section>
			<!-- 
			=============================================
				gallery
			============================================== 
			-->
			@if(isset($photos))
			<section class="section-spacing">
				<div class="container">
					<div class="gallery-view">
		                <div class="row" id="lightgallery"> 
							<!----gallary data----->
							@foreach($photos as $photo)
								<div class="item col-md-3" data-src="uploads/photo_gallery/{{$photo->file}}" data-sub-html="{{$photo->caption}}">
									<a href="">
										<img src="uploads/photo_gallery/{{$photo->file}}" alt="{{$photo->caption}}"/>
										<div class="gallery-overlay"><img src="uploads/photo_gallery/{{$photo->file}}"></div>
									</a>
								</div>
							@endforeach
						  <!----gallary data close----->
		                </div>
		            </div>
          		</div>
			</section>
		  @endif
		  		<!-- gllery js -->
	    <script src="/website/js/gallery/picturefill.min.js"></script>
	    <script src="/website/js/gallery/lightgallery.js"></script>
	    <script src="/website/js/gallery/lg-pager.js"></script>
	    <script src="/website/js/gallery/lg-autoplay.js"></script>
	    <script src="/website/js/gallery/lg-fullscreen.js"></script>
	    <script src="/website/js/gallery/lg-zoom.js"></script>
	    <script src="/website/js/gallery/lg-hash.js"></script>
	    <script src="/website/js/gallery/lg-share.js"></script>
	    <!--End gllery js -->

		<!-- Theme js -->
		<script src="js/theme.js"></script>

		<script>
        lightGallery(document.getElementById('lightgallery'));

        $(function() {
        var selectedClass = "";
        $(".filter").click(function(){
        selectedClass = $(this).attr("data-rel");
        $("#lightgallery").fadeTo(100, 0.1);
        $("#lightgallery div").not("."+selectedClass).fadeOut().removeClass('animation');
        setTimeout(function() {
        $("."+selectedClass).fadeIn().addClass('animation');
        $("#lightgallery").fadeTo(300, 1);
        }, 300);
        });
        });
    	</script>
    @endsection
    