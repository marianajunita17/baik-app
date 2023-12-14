<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
    <!-- Your html goes here -->
    <div class='panel panel-default'>
        <div class='panel-heading'>Sesi Konseling</div>
        <div class='panel-body'>
            <form method='post'
                action='{{ CRUDBooster::adminpath('konselor_janji_temu_akan_datang/inserttolak/' . $row->id) }}'>
                @csrf
                <div class='form-group'>
                    <label>Kode Janji Temu: </label>
                    <p>{{ $row->id }}</p>
                    <label>Nama Pasien: </label>
                    <p>{{ $row->nama_pasien }}</p>
                    <label>Keluhan: </label>
                    <p>{{ $row->keluhan }}</p>
                    <label>Tanggal Konsultasi:</label>
                    <p>{{ $row->dateonly }}</p>
                    <label>Alasan</label>
                    <input type='text' name='alasan' required class='form-control' value='{{ $row->alasan }}' />
                </div>

        </div>
        <div class='panel-footer'>
            <input type='submit' class='btn btn-primary' value='Save changes' />
        </div>
        </form>
    </div>
@endsection
