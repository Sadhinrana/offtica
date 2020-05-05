@extends('layouts.app')

@section('content')
			<!-- HEADING-BANNER START -->
			<div class="heading-banner-area overlay-bg">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="heading-banner">
								<div class="breadcumbs pb-15">
									<ul>
										<li><a href="{{url('/home')}}">Home</a></li>
										<li>About Us</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- HEADING-BANNER END -->
			<!-- ABOUT-US-AREA START -->
			<div class="about-us-area  pt-80 pb-80">
				<div class="container">	
					<div class="about-us bg-white">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
								<div class="about-photo">
									<img src="img/bg/about.png" alt="" />
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
								<div class="about-brief bg-dark-white">
									<h4 class="title-1 title-border text-uppercase mb-30">about offtica</h4>
									@foreach($abouts as $about)
										{!!html_entity_decode($about->description)!!}
									@endforeach
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- ABOUT-US-AREA END -->
@endsection