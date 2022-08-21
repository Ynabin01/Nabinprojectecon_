
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
<!----full page---->
    <section class="department-page">
	<div class="container">
		<div class="row">
			<div class="@if(isset($childs) && $childs->count()>0) col-lg-8 @else col-lg-12 @endif">
				<div class="department-detail">
					<h2>{{$normal->caption}}</h2>
					<p>@php echo $normal->long_content; @endphp</p>
				</div>
			</div>
      @if(isset($childs) && $childs->count()>0)
			<div class="col-lg-4">
			<aside class="sidebar has-marign-left sticky-top">
              <div class="widget widget-services">
                <h5 class="widget__title">{{$slug_detail->caption ?? $slug1}}</h5>
                <div class="widget-content">
                  <ul class="list-unstyled mb-0">
                    @foreach($childs as $child)
                      <li><a href="/{{$slug1}}/{{$child->nav_name}}" class="active"><span>{{$child->caption}}</span><i class="fa fa-arrow-right"></i></a></li>
                    @endforeach
                  </ul>
                </div><!-- /.widget-content -->
              </div><!-- /.widget-services -->
              <!-- <div class="widget widget-help bg-overlay bg-img" style="background: url(/website/images/5.jpg) center center; background-size: cover;">
                <div class="widget-content">
                  <div class="widget__icon">
                    <i class="icon-call3"></i>
                  </div>
                  <h4 class="widget__title">Emergency Cases</h4>
                  <p class="widget__desc">Please feel welcome to contact our friendly reception staff with any general
                    or medical enquiry call us.
                  </p>
                  <a href="tel:015218921" class="phone__number">
                    <i class="icon-phone fa fa-phone"></i> <span>+977-01-5218921</span>
                  </a>
                </div>
              </div> -->
            </aside>
			</div>
      @endif
		</div>
	</div>
</section>

@endsection