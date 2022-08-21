@extends("layouts.master")
@section("content")

<section class="page-title page-title-layout5 bg-img" style="background-image: url(/website/images/6.jpg) !important; background-size: cover; background-position: center center; padding-top: 120px;">
      <div class="container">
        <div class="row">
          <div class="col-12 d-flex justify-content-between flex-wrap align-items-center">
            <h1 class="pagetitle__heading my-3">Our Services</h1>
            <nav>
              <ol class="breadcrumb my-3">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item">Services</li>
              </ol>
            </nav>
          </div><!-- /.col-12 -->
        </div><!-- /.row -->
      </div><!-- /.container -->
    </section>

<section class="latest_news news-page">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-4 col-sm-12">
					<div class="outer-box">
              <a href="newsdetails">
                  <div class="box" style="background-image: url(/website/images/news-1.png)">
                      <div class="box-overlay">
                          <h3>Problems as we grow older.</h3>
                      </div>
                  </div>
              </a>
          </div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-12">
					<div class="outer-box">
              <a href="newsdetails">
                  <div class="box" style="background-image: url(/website/images/news-2.png)">
                      <div class="box-overlay">
                          <h3>Covid Vaccination</h3>
                      </div>
                  </div>
              </a>
          </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-12">
      	<div class="outer-box">
            <a href="newsdetails">
                <div class="box" style="background-image: url(/website/images/news-3.png)">
                    <div class="box-overlay">
                        <h3>World Health Day</h3>
                    </div>
                </div>
            </a>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-12">
      	<div class="outer-box">
            <a href="newsdetails">
                <div class="box" style="background-image: url(/website/images/news-4.png)">
                    <div class="box-overlay">
                        <h3>Health Issues of Nepal</h3>
                    </div>
                </div>
            </a>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-12">
      	<div class="outer-box">
            <a href="newsdetails">
                <div class="box" style="background-image: url(/website/images/news-5.png)">
                    <div class="box-overlay">
                        <h3>Mens Mental Health</h3>
                    </div>
                </div>
            </a>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-12">
      	<div class="outer-box">
            <a href="newsdetails">
                <div class="box" style="background-image: url(/website/images/news-6.png)">
                    <div class="box-overlay">
                        <h3>Women Health</h3>
                    </div>
                </div>
            </a>
        </div>
      </div>
		</div>
	</div>
</section>

@endsection
