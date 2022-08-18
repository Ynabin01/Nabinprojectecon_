@extends("layouts.master")

@section('content')
<section class="page-header">
    <div class="container">
        <div class="row align-items-center">
        <div class="col-md-6">
        <h6>Contact Us</h6>
        </div>
        <div class="col-md-6">
        <ul class="thm-breadcrumb list-unstyled">
            <li><a href="index.html">Home</a></li>
            <li><span>Contact</span></li>
        </ul>
        </div>
        </div>
    </div>
</section>

<section class="contact-one">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-7">
                <div class="contact-one__form__wrap">
                    <div class="block-title text-left text-white">
                        <p>contact with us</p>
                        <h3>write us a message</h3>
                    </div>
                    <form class="contact-one__form">
                        <div class="row low-gutters">
                            <div class="col-md-6">
                                <div class="input-group">
                                    <input type="text" name="name" placeholder="Your Name">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-group">
                                    <input type="text" name="email" placeholder="Email Address">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-group">
                                    <input type="text" name="phone" placeholder="Phone Number">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-group">
                                    <input type="text" name="subject" placeholder="Subject">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="input-group">
                                    <textarea name="message" placeholder="Write Message"></textarea>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="input-group contact__btn">
                                    <button type="submit" class="thm-btn contact-one__btn">Send message</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-xl-5">
                <div class="contact-right">
                        <h3>Post Box No:13943</h3>
                        <h3>Bhagabatisthan, Thamel <br>Kathmandu, Nepal.</h3>
                        <p><a href="mailto:info@nepalexport.org.np">info@nepalexport.org.np</a>
                        <a href="mailto:econ.exportcouncil@gmail.com">econ.exportcouncil@gmail.com</a></p>
                        <a href="tel:97714441337">+977 1 4441337</a> / <a href="tel:97714412251">+977-1-4412251</a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="contact_google_map_1">
        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14128.111837853025!2d85.310694!3d27.716423!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xdba8c2b6d1695346!2sEXPORT%20COUNCIL%20OF%20NEPAL!5e0!3m2!1sen!2snp!4v1658035501391!5m2!1sen!2snp"allowfullscreen="" class="google-map__contact1"></iframe>
</section>
@endsection

