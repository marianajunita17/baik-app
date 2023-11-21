@extends('layouts.main')

@section('container-content')

    <!--======== Team Section ========-->
    <section class="team-section space-top space-bottom-shape2-plus">
        <div class="container">
            <div class="row team-details">
                <div class="team-content team-img">
                    <img src="{{ asset('assets/img/product/profil-user.jpg') }}" alt="team member">
                </div>
                <div class="col-lg-10 offset-lg-2">
                    <div class="team-content-card bg-smoke">
                        <h2 class="team-name">{{$users->nama_pasien}}</h2>
                        {{-- <span class="team-desig">Full Time Teacher</span>
                        <p class="team-desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                            tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida.
                            Risus commodo viverra maecenas accumsan lacus vel facilisis. </p> --}}
                        <div class="info-list">
                            <ul>
                                <li><strong>Umur: </strong>{{$users->umur}} Tahun</li>
                                <li><strong>Jenis kelamin: </strong>{{$users->jenis_kelamin}}</li>
                                <li><strong>Email:</strong>{{$users->email}}
                                </li>
                            </ul>
                        </div>
                        <div class="form-group col-12">
                            <a href="{{ route('profile.edit') }}" class="vs-btn wave-btn">Edit Profile</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--======== / Team Section ========-->

    <!--======== Team Section ========-->

    @endsection
