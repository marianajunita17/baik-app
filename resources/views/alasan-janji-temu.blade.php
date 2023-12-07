<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Alasan</div>
    <div class='panel-body'>
      <form method='post' action='{{CRUDBooster::mainpath('edit-save/$id')}}'>
        <div class='form-group'>
          <label>Alasan</label>
          <input type='text' name='alasan' required class='form-control' value='{{$row->alasan}}'/>
        </div>
      </form>
    </div>
    <div class='panel-footer'>
      <input type='submit' class='btn btn-primary' value='Save changes'/>
    </div>
  </div>
@endsection
