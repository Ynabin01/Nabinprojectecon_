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

<section class="sahid-team">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12  col-sm-12">

                <h2 class="section-title text-center">Our Specilists</h2>

            </div>
        </div>
        <div class="row">
            <div class="col-xl-3 col-md-6 col-sm-12">
                <div class="box">
                    <figure>
                        <a href=""><img src="/website/images/team-1.png" alt="" width="800" height="800"></a>
                    </figure>
                    <h4><a href="#">Ram Babu Adhikari</a></h4>
                    <span>ICU Expert</span>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 col-sm-12">
                <div class="box">
                    <figure>
                        <a href=""><img src="/website/images/team-2.png" alt="" width="800" height="800"></a>
                    </figure>
                    <h4><a href="#">Ram Babu Adhikari</a></h4>
                    <span>ICU Expert</span>

                </div>
            </div>
            <div class="col-xl-3 col-md-6 col-sm-12">
                <div class="box">
                    <figure>
                        <a href=""><img src="/website/images/team-3.png" alt="" width="800" height="800"></a>
                    </figure>
                    <h4><a href="#">Ram Babu Adhikari</a></h4>
                    <span>ICU Expert</span>

                </div>
            </div>
            <div class="col-xl-3 col-md-6 col-sm-12">
                <div class="box">
                    <figure>
                        <a href=""><img src="/website/images/team-4.png" alt="" width="800" height="800"></a>
                    </figure>
                    <h4><a href="#">Ram Babu Adhikari</a></h4>
                    <span>ICU Expert</span>

                </div>
            </div>
            <div class="col-xl-3 col-md-6 col-sm-12">
                <div class="box">
                    <figure>
                        <a href=""><img src="/website/images/team-1.png" alt="" width="800" height="800"></a>
                    </figure>
                    <h4><a href="#">Ram Babu Adhikari</a></h4>
                    <span>ICU Expert</span>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 col-sm-12">
                <div class="box">
                    <figure>
                        <a href=""><img src="/website/images/team-2.png" alt="" width="800" height="800"></a>
                    </figure>
                    <h4><a href="#">Ram Babu Adhikari</a></h4>
                    <span>ICU Expert</span>

                </div>
            </div>
            <div class="col-xl-3 col-md-6 col-sm-12">
                <div class="box">
                    <figure>
                        <a href=""><img src="/website/images/team-3.png" alt="" width="800" height="800"></a>
                    </figure>
                    <h4><a href="#">Ram Babu Adhikari</a></h4>
                    <span>ICU Expert</span>

                </div>
            </div>
            <div class="col-xl-3 col-md-6 col-sm-12">
                <div class="box">
                    <figure>
                        <a href=""><img src="/website/images/team-4.png" alt="" width="800" height="800"></a>
                    </figure>
                    <h4><a href="#">Ram Babu Adhikari</a></h4>
                    <span>ICU Expert</span>

                </div>
            </div>
        </div>
    </div>
</section>


@endsection