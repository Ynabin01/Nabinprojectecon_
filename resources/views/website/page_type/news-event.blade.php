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

<section class="latest_news news-page">
	<div class="container">
		<div class="row">
            <!-----start---->
            @foreach($newsevents as $newevent)
                <div class="col-lg-3 col-md-4 col-sm-12">
                    <div class="outer-box">
                            <a href="/{{$slug1}}/{{$newevent->nav_name}}">
                                <div class="box" style="background-image: url({{$newevent->banner_image}})">
                                    <div class="box-overlay">
                                        <h3>{{$newevent->caption}}</h3>
                                    </div>
                                </div>
                            </a>
                    </div>
                </div>
            @endforeach
          <!------end---->
		</div>
	</div>
</section>

@endsection
