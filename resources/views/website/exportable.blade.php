<section class="export-block">
    <div class="container">
        <div class="block-title text-center">
            <p>Nepal</p>
            <h3>Exportable Items</h3>
        </div>
        <div class="export-block_carousel owl-theme owl-carousel">
            @if(isset($exportables))
            <!--Item-->
            @foreach($exportables as $exportable)
            <div class="project_three_single">
                <a href="item-detail.html">
                <div class="project_three_image">
                    <img src="{{$exportable->banner_image}}" alt="">
                    <div class="project_three_content">
                        <h2>
                            {{$exportable->caption}}
                        </h2>
                    </div>
                </div>
                </a>
            </div>
            @endforeach
            @endif
                    </div>
        <div class="view-all-item text-center">
        <a href="item-list.html" class="thm-btn about_one__btn">View All</a>
        </div>
    </div>
</section>
