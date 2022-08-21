<section class="mesage-block">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-4">
                <div class="block-title text-left">
                    <p>Message</p>
                    <h3>{{$message->caption ?? ''}}</h3>
                </div>
            </div>
            <div class="col-xl-8 d-flex">
                <div class="my-auto">
                    <div class="mesage-block_text">
                        <p>
                            {{$message->short_content ?? ''}}
                        </p>
                        <a href="inner" class="thm-btn about_one__btn">Read More</a>
                    </div>
                </div><!-- /.my-auto -->
            </div>
        </div>
    </div>
</section>
