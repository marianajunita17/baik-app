<?php namespace App\Http\Controllers;

use App\janjitemu;
use Carbon\Carbon;
use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class KonselorJanjiTemu28Controller extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon_text";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "janji_temu";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Kode","name"=>"id"];
			$this->col[] = ["label"=>"Pasien","name"=>"pasien_id","join"=>"pasiens,nama_pasien"];
			$this->col[] = ["label"=>"Konselor","name"=>"konselor_id","join"=>"konselors,nama_konselor"];
			$this->col[] = ["label"=>"Tanggal Konsultasi Mulai","name"=>"tgl_konsultasi_mulai"];
            $this->col[] = ["label"=>"Tanggal Konsultasi Selesai","name"=>"tgl_konsultasi_selesai"];
			$this->col[] = ["label"=>"Keluhan Pasien","name"=>"keluhan"];
			$this->col[] = ["label"=>"Catatan Kasus Konselor","name"=>"catatan_kasus"];
			$this->col[] = ["label"=>"Persentase Kesesuaian (%)","name"=>"presentase_kesesuaian"];
			$this->col[] = ["label"=>"Durasi Konsultasi (menit)","name"=>"durasi_konsultasi"];
			$this->col[] = ["label"=>"Rekomendasi Konselor","name"=>"rekomendasi"];
			$this->col[] = ["label"=>"Perlu Lanjut?","name"=>"perlu_lanjut"];
			$this->col[] = ["label"=>"Janji Temu Sebelumnya","name"=>"janji_temu_id","join"=>"janji_temu,id"];
			$this->col[] = ["label"=>"Nominal","name"=>"nominal"];
			$this->col[] = ["label"=>"Jenis Pembayaran","name"=>"bank_id", "join"=>"pembayarans,bank"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Janji Temu Sebelumnya','name'=>'janji_temu_id','type'=>'select2','validation'=>'integer|min:0','width'=>'col-sm-10','datatable'=>'janji_temu,id'];
			$this->form[] = ['label'=>'Tanggal Konsultasi Selesai','name'=>'tgl_konsultasi_selesai','type'=>'datetime','validation'=>'date_format:Y-m-d H:i:s','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Catatan Kasus','name'=>'catatan_kasus','type'=>'textarea','validation'=>'min:0|max:5000','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Persentase Kesesuaian (%)','name'=>'presentase_kesesuaian','type'=>'text','validation'=>'min:0|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Rekomendasi Konselor','name'=>'rekomendasi','type'=>'textarea','validation'=>'min:0|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Perlu Lanjut','name'=>'perlu_lanjut','type'=>'radio','validation'=>'min:0|max:255','width'=>'col-sm-10','dataenum'=>'Ya;Tidak'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ["label"=>"Keluhan","name"=>"keluhan","type"=>"textarea","required"=>TRUE,"validation"=>"required|string|min:5|max:5000"];
			//$this->form[] = ["label"=>"Janji Temu Id","name"=>"janji_temu_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"janji_temu,id"];
			//$this->form[] = ["label"=>"Pasien Id","name"=>"pasien_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"pasien,id"];
			//$this->form[] = ["label"=>"Nominal","name"=>"nominal","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Bank Id","name"=>"bank_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"bank,id"];
			//$this->form[] = ["label"=>"Tgl Konsultasi Mulai","name"=>"tgl_konsultasi_mulai","type"=>"datetime","required"=>TRUE,"validation"=>"required|date_format:Y-m-d H:i:s"];
			//$this->form[] = ["label"=>"Tgl Konsultasi Selesai","name"=>"tgl_konsultasi_selesai","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Durasi Konsultasi","name"=>"durasi_konsultasi","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
			//$this->form[] = ["label"=>"Catatan Kasus","name"=>"catatan_kasus","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Presentase Kesesuaian","name"=>"presentase_kesesuaian","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Rekomendasi","name"=>"rekomendasi","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Perlu Lanjut","name"=>"perlu_lanjut","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
			//$this->form[] = ["label"=>"Konselor Id","name"=>"konselor_id","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"konselor,id"];
			# OLD END FORM

			/*
	        | ----------------------------------------------------------------------
	        | Sub Module
	        | ----------------------------------------------------------------------
			| @label          = Label of action
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        |
	        */
	        $this->sub_module = array();


	        /*
	        | ----------------------------------------------------------------------
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------
	        | @label       = Label of action
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        |
	        */
	        $this->addaction = array();


	        /*
	        | ----------------------------------------------------------------------
	        | Add More Button Selected
	        | ----------------------------------------------------------------------
	        | @label       = Label of action
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button
	        | Then about the action, you should code at actionButtonSelected method
	        |
	        */
	        $this->button_selected = array();


	        /*
	        | ----------------------------------------------------------------------
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------
	        | @message = Text of message
	        | @type    = warning,success,danger,info
	        |
	        */
	        $this->alert        = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Add more button to header button
	        | ----------------------------------------------------------------------
	        | @label = Name of button
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        |
	        */
	        $this->index_button = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.
	        |
	        */
	        $this->table_row_color = array();


	        /*
	        | ----------------------------------------------------------------------
	        | You may use this bellow array to add statistic at dashboard
	        | ----------------------------------------------------------------------
	        | @label, @count, @icon, @color
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Add javascript at body
	        | ----------------------------------------------------------------------
	        | javascript code in the variable
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ----------------------------------------------------------------------
	        | Include HTML Code before index table
	        | ----------------------------------------------------------------------
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;



	        /*
	        | ----------------------------------------------------------------------
	        | Include HTML Code after index table
	        | ----------------------------------------------------------------------
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;



	        /*
	        | ----------------------------------------------------------------------
	        | Include Javascript File
	        | ----------------------------------------------------------------------
	        | URL of your javascript each array
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Add css style at body
	        | ----------------------------------------------------------------------
	        | css code in the variable
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;



	        /*
	        | ----------------------------------------------------------------------
	        | Include css File
	        | ----------------------------------------------------------------------
	        | URL of your css each array
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();


	    }


	    /*
	    | ----------------------------------------------------------------------
	    | Hook for button selected
	    | ----------------------------------------------------------------------
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here

	    }


	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate query of index result
	    | ----------------------------------------------------------------------
	    | @query = current sql query
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate row of index table html
	    | ----------------------------------------------------------------------
	    |
	    */
	    public function hook_row_index($column_index,&$column_value) {
	    	//Your code here
	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate data input before add data is execute
	    | ----------------------------------------------------------------------
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after add public static function called
	    | ----------------------------------------------------------------------
	    | @id = last insert id
	    |
	    */
	    public function hook_after_add($id) {
	        $janjitemu = janjitemu::find($id);

            $startDate = Carbon::parse($janjitemu->tgl_konsultasi_mulai);
            $endDate = Carbon::parse($janjitemu->tgl_konsultasi_selesai);

            $diff = $startDate->diffInMinutes($endDate);

            $different = $startDate->diff($endDate);
            $second = $different->s;

            if($second > 0){
                $diff += 1;
            }

            $janjitemu->durasi_konsultasi = $diff;
            $janjitemu->save();
	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate data input before update data is execute
	    | ----------------------------------------------------------------------
	    | @postdata = input post data
	    | @id       = current id
	    |
	    */
	    public function hook_before_edit(&$postdata,$id) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------
	    | @id       = current id
	    |
	    */
	    public function hook_after_edit($id) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------
	    | @id       = current id
	    |
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------
	    | @id       = current id
	    |
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }



	    //By the way, you can still create your own method in here... :)


	}