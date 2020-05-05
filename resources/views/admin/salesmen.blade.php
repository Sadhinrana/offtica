@extends('admin.layouts.app')

@section('breadcrumbhead')
    Salesmen
    <small>Control panel</small>
@endsection

@section('breadcrumb')
    <li class="active">Salesmen</li>
@endsection

@section('content')
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Salesmen</h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Salesman name</th>
                    <th>Designation</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>Country</th>
                    <th>State/Division</th>
                    <th>Town/City</th>
                    <th>Zipe-code</th>
                    <th>
                        action
                        <a href="#" class="addSalesmen btn btn-success btn-sm">
                            <i class="fa fa-plus"></i>
                        </a>
                    </th>
                </tr>
                </thead>
                <tbody>
                @foreach($salesmen as $salesman)
                    <tr id="salesman{{$salesman->id}}">
                        <td>{{$salesman->salesmanName}}</td>
                        <td>{{$salesman->designation}}</td>
                        <td>{{$salesman->email}}</td>
                        <td>{{$salesman->phone}}</td>
                        <td>{{$salesman->address}}</td>
                        <td>{{$salesman->country}}</td>
                        <td>{{$salesman->division}}</td>
                        <td>{{$salesman->city}}</td>
                        <td>{{$salesman->zipCode}}</td>
                        <td>
                            <div class="table-data-feature">
                                <a href="#" class="edit-salesman btn btn-warning btn-sm" data-id="{{$salesman->id}}" data-salesmanName="{{$salesman->salesmanName}}" data-designation="{{$salesman->designation}}" data-email="{{$salesman->email}}" data-phone="{{$salesman->phone}}" data-address="{{$salesman->address}}" data-country="{{$salesman->country}}" data-division="{{$salesman->division}}" data-division="{{$salesman->division}}" data-division="{{$salesman->division}}" data-city="{{$salesman->city}}" data-zipCode="{{$salesman->zipCode}}">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <a href="#" class="delete-salesman btn btn-danger btn-sm" data-id="{{$salesman->id}}">
                                    <i class="fa fa-trash"></i>
                                </a>
                            </div>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /.box -->

    {{-- Modal Form Create Post --}}
    <div id="create" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h2 class="modal-title" id="largeModalLabel">Large Modal</h2>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" role="form" id="salesman-form" action="{{url('salesmen')}}">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="salesmanName">Salesman Name :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" name="salesmanName"
                                       placeholder="salesmanName Here" required>
                                <p class="error salesmanName text-center alert alert-danger hidden"></p>
                            </div>
                            <label class="control-label col-sm-2" for="designation">Designation :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" name="designation"
                                       placeholder="designation Here" required>
                                <p class="error designation text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="email">E-mail :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" name="email"
                                       placeholder="email Here" required>
                                <p class="error email text-center alert alert-danger hidden"></p>
                            </div>
                            <label class="control-label col-sm-2" for="phone">Phone :</label>
                            <div class="col-sm-4">
                                <input type="number" class="form-control" name="phone"
                                       placeholder="phone Here" required>
                                <p class="error phone text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="zipCode">Zip-code:</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" name="zipCode" placeholder="Zip-code  here...">
                            </div>
                            <label class="control-label col-sm-2" for="country">Country:</label>
                            <div class="col-sm-4">
                                <select class="form-control" name="country">
                                    <option value="">Select Country</option>
                                    <option value="Bangladesh">Bangladesh</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="division">State:</label>
                            <div class="col-sm-4">
                                <select class="form-control" name="division">
                                    <option value="">Select State</option>
                                    <option value="Dhaka">Dhaka</option>
                                </select>
                            </div>
                            <label class="control-label col-sm-2" for="city">Town / City:</label>
                            <div class="col-sm-4">
                                <select class="form-control" name="city">
                                    <option value="">Select Town / City</option>
                                    <option value="Dhaka">Dhaka</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="address">Address :</label>
                            <div class="col-sm-4">
                                <textarea placeholder="Your address here..." class="form-control" name="address"></textarea>
                            </div>
                            <label class="control-label col-sm-2" for="password">Password :</label>
                            <div class="col-sm-4">
                                <input type="password" name="password" class="form-control" placeholder="password  here...">
                                <p class="error password text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn" data-dismiss="modal">Close</a>
                    <button class="btn btn-warning" type="submit" id="addSalesmen">
                        <span class="glyphicon glyphicon-plus"></span>Save Salesman
                    </button>
                </div>
            </div>
        </div>
    </div>

    <div class="clearfix"></div>

    {{-- Modal Form Edit and Delete Post --}}
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h2 class="modal-title" id="largeModalLabel">Large Modal</h2>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" role="form" id="salesman-update-form" action="{{url('salesmen')}}">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="salesmanName">Salesman Name :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="salesmanName" name="salesmanName"
                                       placeholder="salesmanName Here" required>
                            </div>
                            <label class="control-label col-sm-2" for="designation">Designation :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="designation" name="designation"
                                       placeholder="designation Here" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="email">E-mail :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="email" name="email"
                                       placeholder="email Here" required>
                            </div>
                            <label class="control-label col-sm-2" for="phone">Phone :</label>
                            <div class="col-sm-4">
                                <input type="number" class="form-control" id="phone" name="phone"
                                       placeholder="phone Here" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="zipCode">Zip-code:</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="zipCode" name="zipCode" placeholder="Zip-code  here...">
                            </div>
                            <label class="control-label col-sm-2" for="country">Country:</label>
                            <div class="col-sm-4">
                                <select class="form-control" name="country" id="country">
                                    <option value="">Select Country</option>
                                    <option value="Bangladesh">Bangladesh</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="division">State:</label>
                            <div class="col-sm-4">
                                <select class="form-control" name="division" id="division">
                                    <option value="">Select State</option>
                                    <option value="Dhaka">Dhaka</option>
                                </select>
                            </div>
                            <label class="control-label col-sm-2" for="city">Town / City:</label>
                            <div class="col-sm-4">
                                <select class="form-control" name="city" id="city">
                                    <option value="">Select Town / City</option>
                                    <option value="Dhaka">Dhaka</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="address">Address :</label>
                            <div class="col-sm-4">
                                <textarea placeholder="Your address here..." class="form-control" name="address" id="address"></textarea>
                            </div>
                            <label class="control-label col-sm-2" for="password">Password :</label>
                            <div class="col-sm-4">
                                <input type="password" id="password" name="password" class="form-control" placeholder="password  here...">
                            </div>
                        </div>
                        <input type="hidden" name="_method" value="PUT">
                        <input type="hidden" name="id" id="id">
                    </form>
                    {{-- Form Delete Post --}}
                    <input type="hidden" name="_method1" value="DELETE">
                    <div class="deleteContent">
                        Are You sure want to delete this data?
                        <span class="hidden id" style="display:none"></span>
                    </div>

                </div>
                <div class="modal-footer">

                    <button type="button" class="btn actionBtn" data-dismiss="modal">
                        <span id="footer_action_button" class="glyphicon"></span>
                    </button>

                    <button type="button" class="btn btn-warning" data-dismiss="modal">
                        <span class="glyphicon glyphicon"></span>close
                    </button>

                </div>
            </div>
        </div>
    </div>

@endsection