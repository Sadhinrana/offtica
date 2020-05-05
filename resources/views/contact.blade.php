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
										<li>Contact Us</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- HEADING-BANNER END -->
			<!-- contact-us-AREA START -->
			<div class="contact-us-area  pt-80 pb-80">
				<div class="container">	
					<div class="contact-us customer-login bg-white">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12">
								<div class="contact-details">
									<h4 class="title-1 title-border text-uppercase mb-30">contact details</h4>
									<ul>
										@foreach($contacts as $contact)
										<li>
											<i class="zmdi zmdi-pin"></i>
											<span>{{$contact->address}}</span>
										</li>
										<li>
											<i class="zmdi zmdi-phone"></i>
											<span><a href="tel:{{$contact->phone1}}">{{$contact->phone1}}</a></span>
											<span><a href="tel:{{$contact->phone2}}">{{$contact->phone2}}</a></span>
										</li>
										<li>
											<i class="zmdi zmdi-email"></i>
											<span><a href="mailto:{{$contact->email}}">{{$contact->email}}</a></span>
										</li>
										@endforeach
									</ul>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-7 col-xs-12 mt-xs-30">
								<div class="send-message mt-60" style="margin: 0">
									<form action="{{url('messages')}}" id="contact-form">
										<h4 class="title-1 title-border text-uppercase mb-30">send message</h4>
										<p class="success text-center alert alert-success hidden"></p>
										<input type="text" name="name" placeholder="Your name here..." />
										<p class="error name text-center alert alert-danger hidden"></p>
										<input type="text" name="subject" placeholder="Your subject here..." />
										<p class="error subject text-center alert alert-danger hidden"></p>
										<input type="email" name="email" placeholder="Your email here..." />
										<p class="error email text-center alert alert-danger hidden"></p>
										<input type="number" name="phone" placeholder="Your phone here..." />
										<p class="error phone text-center alert alert-danger hidden"></p>
										<textarea class="custom-textarea" name="message" placeholder="Your comment here..."></textarea>
										<p class="error message text-center alert alert-danger hidden"></p>
										<button class="button-one submit-button mt-20" data-text="submit message" type="submit">submit message</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- ABOUT-US-AREA END -->
@endsection