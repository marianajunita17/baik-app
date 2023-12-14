<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
    <!-- Your html goes here -->
    <div class='panel panel-default'>
        <div class='panel-heading'>Add Sesi Konseling</div>
        <div class='panel-body'>
            <form method='post' action='{{ CRUDBooster::adminpath('konselor_janji_temu_akan_datang/addsesi') }}'>
                @csrf
                <div class='form-group'>
                    <label>Tanggal Sesi</label>
                    <input type='date' name='date' value="{{ now()->format('Y-m-d') }}" required class='form-control' />
                    <label>Waktu Mulai Sesi</label>
                    <input type='time' id='start_time' name='start_time' value="{{ $jakartaTimezone }}" required
                        class='form-control' />
                    <label>Waktu Selesai Sesi</label>
                    <input type='time' id='end_time' name='end_time' value="{{ $jakartaTimezone }}" required
                        class='form-control' />
                    <label for="sesi">Buka sesi dengan slot atau menit?</label><br>
                    <input type="text" name="jumlah_sesi" id="sesipilihan" placeholder="Enter number" style="display: none;">
                    <select name="session" id="sesi">
                        <option value="">Pilih Pembagian Sesi</option>
                        <option value="Slot">Slot</option>
                        <option value="Menit">Menit</option>
                    </select>
                </div>
        </div>
        <div class='panel-footer'>
            <input type='submit' class='btn btn-primary' value='Save changes' />
        </div>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#sesi').change(function() {
                var selected = $(this).val();

                if (selected == 'Slot' || selected == 'Menit') {
                    $('#sesipilihan').show();
                } else {
                    $('#sesipilihan').hide();
                }
            });
        });
    </script>
@endsection
