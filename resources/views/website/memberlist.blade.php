@extends('layouts.master')
@section('content')
    <section class="page-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h6>Member List</h6>
                </div>
                <div class="col-md-6">
                    <ul class="thm-breadcrumb list-unstyled">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="#">Member</a></li>
                        <li><span>Member List</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="innner_detail">
        <div class="container">
            <table class="table">
                <thead>
                    <th>Membership No.</th>
                    <th>Company Name</th>
                    <th>Address</th>
                    <th>Contact Info</th>
                    <th>Contact Person</th>
                </thead>
                <tbody>
                    <tr>
                        <td data-label="Member No.">704</td>
                        <td data-label="Company Name">AB Traders and Exports</td>
                        <td data-label="Address">Lucky Plaza 1st Floor Chibahal Thamel</td>
                        <td data-label="Contact Info">Phone: 01-5369200 / 9851067200 <br>Email: arylhari07@gmail.com
                            <br>Website: <a href="#" target="_blank">http://radiantnepal.com/</a></td>
                        <td data-label="Contact Person">Hari Parsad Aryal</td>
                    </tr>


                    <tr>
                        <td data-label="Member No.">94</td>
                        <td data-label="Company Name">Alpine Cargo P.LTD</td>
                        <td data-label="Address">Thamel, KTM, Nepal</td>
                        <td data-label="Contact Info">Phone: 01-416845<br>Email: alpineishwor@yahoo.com<br>Fax: 423544
                            <br>Website: <a href="#" target="_blank">http://radiantnepal.com/</a></td>
                        <td data-label="Contact Person">Hari Parsad Aryal</td>
                    </tr>


                </tbody>
            </table>
        </div>
    </section>
@endsection
