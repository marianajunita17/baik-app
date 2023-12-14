<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
    <!-- Your html goes here -->
    <div class='panel panel-default'>
        <div class='panel-heading'>Add Sesi Konseling</div>
        <div class='panel-body'>
            <form method='post' action='{{ CRUDBooster::mainpath('add-save') }}'>
                <div class='form-group'>
                    <label>Tanggal Sesi</label>
                    <input type='date' name='date' value="{{ now()->format('Y-m-d') }}" required class='form-control' />
                    <label>Waktu Mulai Sesi</label>
                    <input type='time' id='start_time' name='start_time' value="{{ $jakartaTimezone }}" required class='form-control' />
                    <label>Waktu Selesai Sesi</label>
                    <input type='time' id='end_time' name='end_time' value="{{ $jakartaTimezone }}" required class='form-control' />
                </div>
        </div>
        <div class='panel-footer'>
            <input type='submit' class='btn btn-primary' value='Save changes' />
        </div>
        </form>
    </div>
@endsection
