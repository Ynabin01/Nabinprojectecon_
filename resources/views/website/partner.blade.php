@php	 
	 if(app\Models\Navigation::query()->where('nav_category','Home')->where('nav_name', 'LIKE', "%partner%")->where('page_type','Group')->latest()->first()!=null){
            $partners_id = app\Models\Navigation::query()->where('nav_category','Home')->where('nav_name', 'LIKE', "%partner%")->where('page_type','Group')->latest()->first()->id;
            $partners = app\Models\Navigation::query()->where('parent_page_id',$partners_id)->latest()->get();
        }
        else{
            $partners = null;
        }
@endphp

<div class="brand-one">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="partner-title">
                    <h6>BUSINESS PARTNERS</h6>
                </div>
                <div class="brand-one-carousel owl-carousel">
                    <div class="single_brand_item">
                        @if (isset($partners))
                            @foreach ($partners as $partner)
                                <a href="#"><img src="{{ $partner->banner_image }}" alt="brand"></a>
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
