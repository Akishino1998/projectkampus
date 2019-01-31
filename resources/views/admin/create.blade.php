@extends('admin.layouts.master')
@section('konten')
	<section role="main" class="content-body">
		<header class="page-header">
			<h2>Tambah Data</h2>
			<div class="right-wrapper pull-right">
				<ol class="breadcrumbs">
					<li>
						<a href="/index">
							<i class="fa fa-home"></i>
						</a>
					</li>
					<li><span>Form Pengisian data</span></li>
					<li><span>Tahap Awal</span></li>
				</ol>
				<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
			</div>
		</header>
		<div class="row">
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading">
						<div class="panel-actions">
							<a href="#" class="fa fa-caret-down"></a>
							<a href="#" class="fa fa-times"></a>
						</div>
						<h2 class="panel-title">ISI DATA DIRI DENGAN BENAR</h2>
					</header>
					<div class="panel-body">
						<form class="form-horizontal form-bordered" method="post">
							<div class="form-group">
								<label class="col-md-3 control-label" for="inputDefault">No. STNK</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="inputDefault" name="no">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="inputDefault">Nama Lengkap</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="inputDefault" name="nama_pemilik">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="inputDefault">Nomor Plat	</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="inputDefault" name="no_polisi">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="inputDefault">Alamat	</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="inputDefault" name="alamat">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="inputDefault">Merk Type</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="inputDefault" name="merktype">
									<span class="help-block">Contoh "honda,yamaha, dll".</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="inputDefault">Jenis Model	</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="inputDefault" name="jenis_model">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="inputDefault">Isi Silinder	</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="inputDefault" name="isi_silinder">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="inputDefault">Warna Kb	</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="inputDefault" name="warna_kb">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="inputDefault">No Rangka	</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="inputDefault" name="no_rangka">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="inputDefault">No Mesin</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="inputDefault" name="no_mesin">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="inputDefault">No BPKB	</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="inputDefault" name="no_bpkb">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="inputDefault">Tanggal Berlaku	</label>
								<div class="col-md-6">
									<input type="date" class="form-control" id="inputDefault" name="berlaku_sampai">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="inputDefault">Warna TNKB	</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="inputDefault" name="warna_tnkb">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label" for="inputDefault">Bahan Bakar	</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="inputDefault" name="bahan_bakar">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">Foto</label>
								<div class="col-md-6">
									<div class="fileupload fileupload-new" data-provides="fileupload">
										<div class="input-append">
											<div class="uneditable-input">
												<span class="fileupload-preview"></span>
											</div>
											<span class="btn btn-default btn-file">
												<span class="fileupload-new">Select file</span>
												<input type="file" name="foto" />
											</span>
											<a href="#" class="btn btn-default fileupload-exists" data-dismiss="fileupload">Remove</a>
											<span class="help-block">*Foto motor Harus sesuai dengan warna STNK.</span>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
			</section>
		</div>
	</section>

@endsection