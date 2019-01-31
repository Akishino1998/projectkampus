@extends('admin.layouts.master')
@section('konten')
	<section role="main" class="content-body">
		<header class="page-header">
			<h2>Dashboard</h2>
			<div class="right-wrapper pull-right">
				<ol class="breadcrumbs">
					<li>
						<a href="index.html">
							<i class="fa fa-home"></i>
						</a>
					</li>
					<li><span>Dashboard</span></li>
				</ol>
				<a class="sidebar-right-toggle" ><i class="fa fa-chevron-left"></i></a>
			</div>
		</header>
		<div class="col-md-6 col-lg-12 col-xl-6">
			<div class="row">
				<div class="col-md-12 col-lg-6 col-xl-6">
					<section class="panel panel-featured-left panel-featured-primary">
						<div class="panel-body">
							<div class="widget-summary">
								<div class="widget-summary-col widget-summary-col-icon">
									<div class="summary-icon bg-primary">
										<i class="fa fa-life-ring"></i>
									</div>
								</div>
								<div class="widget-summary-col">
									<div class="summary">
										<h4 class="title">Jumlah Kendaraan</h4>
										<div class="info">
										<strong class="amount">9999999</strong>
										<!-- <span class="text-primary">(14 unread)</span> -->
									</div>
								</div>
								<div class="summary-footer">
									<a class="text-muted text-uppercase">(view all)</a>
								</div>
							</div>
						</div>
									</div>
								</section>
							</div>
							<div class="col-md-12 col-lg-6 col-xl-6">
								<section class="panel panel-featured-left panel-featured-secondary">
									<div class="panel-body">
										<div class="widget-summary">
											<div class="widget-summary-col widget-summary-col-icon">
												<div class="summary-icon bg-secondary">
													<i class="fa fa-usd"></i>
												</div>
											</div>
											<div class="widget-summary-col">
												<div class="summary">
													<h4 class="title">Pendapat setiap swalayan</h4>
													<div class="info">
														<strong class="amount">Rp.99999999999</strong>
													</div>
												</div>
												<div class="summary-footer">
													<a class="text-muted text-uppercase">(withdraw)</a>
												</div>
											</div>
										</div>
									</div>
								</section>
							</div>
							<div class="col-md-12 col-lg-6 col-xl-6">
								<section class="panel panel-featured-left panel-featured-tertiary">
									<div class="panel-body">
										<div class="widget-summary">
											<div class="widget-summary-col widget-summary-col-icon">
												<div class="summary-icon bg-tertiary">
													<i class="fa fa-shopping-cart"></i>
												</div>
											</div>
											<div class="widget-summary-col">
												<div class="summary">
													<h4 class="title">JuKir (Juru Parkir)</h4>
													<div class="info">
														<strong class="amount">99999</strong>
													</div>
												</div>
												<div class="summary-footer">
													<a class="text-muted text-uppercase">(statement)</a>
												</div>
											</div>
										</div>
									</div>
								</section>
							</div>
							<div class="col-md-12 col-lg-6 col-xl-6">
								<section class="panel panel-featured-left panel-featured-quartenary">
									<div class="panel-body">
										<div class="widget-summary">
											<div class="widget-summary-col widget-summary-col-icon">
												<div class="summary-icon bg-quartenary">
													<i class="fa fa-user"></i>
												</div>
											</div>
											<div class="widget-summary-col">
												<div class="summary">
													<h4 class="title">swalayan yang terdaftar</h4>
													<div class="info">
														<strong class="amount">999999999999</strong>
													</div>
												</div>
												<div class="summary-footer">
													<a class="text-muted text-uppercase">(report)</a>
												</div>
											</div>
										</div>
									</div>
								</section>
							</div>
						</div>
					</div>
					</div>
				</section>
			</div>
		</section>
@endsection