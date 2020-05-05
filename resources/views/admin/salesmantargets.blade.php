@extends('admin.layouts.app')

@section('breadcrumbhead')
    Salesman target
    <small>Control panel</small>
@endsection

@section('breadcrumb')
    <li class="active">Salesman target</li>
@endsection

@section('content')
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Salesman target</h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Salesman</th>
                    <th>Client target</th>
                    <th>Sales target</th>
                    <th>Month</th>
                    <th>Year</th>
                    <th>
                        action
                        <a href="#" class="addSalesmanTarget btn btn-success btn-sm">
                            <i class="fa fa-plus"></i>
                        </a>
                    </th>
                </tr>
                </thead>
                <tbody>
                @foreach($salesmentarget as $salesmentarget)
                    <tr id="salesmentarget{{$salesmentarget->id}}">
                        <td>{{$salesmentarget->salesman->salesmanName}}</td>
                        <td>{{$salesmentarget->client_target}}</td>
                        <td>{{$salesmentarget->sales_target}}</td>
                        <td>
                            @if($salesmentarget->month == 1)
                                January
                            @elseif($salesmentarget->month == 2)
                                February
                            @elseif($salesmentarget->month == 3)
                                March
                            @elseif($salesmentarget->month == 4)
                                April
                            @elseif($salesmentarget->month == 5)
                                May
                            @elseif($salesmentarget->month == 6)
                                June
                            @elseif($salesmentarget->month == 7)
                                July
                            @elseif($salesmentarget->month == 8)
                                August
                            @elseif($salesmentarget->month == 9)
                                September
                            @elseif($salesmentarget->month == 10)
                                October
                            @elseif($salesmentarget->month == 11)
                                November
                            @else
                                December
                            @endif
                        </td>
                        <td>{{$salesmentarget->year}}</td>
                        <td>
                            <div class="table-data-feature">
                                <a href="#" class="edit-salesman_target btn btn-warning btn-sm" data-id="{{$salesmentarget->id}}" data-sales_target="{{$salesmentarget->sales_target}}" data-client_target="{{$salesmentarget->client_target}}" data-salesman_id="{{$salesmentarget->salesman_id}}" data-month="{{$salesmentarget->month}}" data-year="{{$salesmentarget->year}}">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <a href="#" class="delete-salesman_target btn btn-danger btn-sm" data-id="{{$salesmentarget->id}}">
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
                    <form class="form-horizontal" role="form" action="{{url('salesmantargets')}}" id="salseman_target_add-form">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="salesman_id">Salesman :</label>
                            <div class="col-sm-4">
                                <select class="form-control salesman_id" name="salesman_id" required>
                                    <option value="">Select Salesman</option>
                                    @foreach($salesmen as $salesman)
                                        <option value="{{$salesman->id}}">{{$salesman->salesmanName}}</option>
                                    @endforeach
                                </select>
                                <p class="error salesman_id text-center alert alert-danger hidden"></p>
                            </div>
                            <label class="control-label col-sm-2" for="client_target">Client target :</label>
                            <div class="col-sm-4">
                                <input type="number" class="form-control" name="client_target" placeholder="client_target Here" required>
                                <p class="error client_target text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="month">Month :</label>
                            <div class="col-sm-4">
                                <select class="form-control" name="month" required>
                                    <option value="">Select Month</option>
                                    <option value="1">January </option>
                                    <option value="2">February </option>
                                    <option value="3">March </option>
                                    <option value="4">April </option>
                                    <option value="5">May </option>
                                    <option value="6">June </option>
                                    <option value="7">July </option>
                                    <option value="8">August </option>
                                    <option value="9">September </option>
                                    <option value="10">October </option>
                                    <option value="11">November </option>
                                    <option value="12">December </option>
                                </select>
                                <p class="error month text-center alert alert-danger hidden"></p>
                            </div>
                            <label class="control-label col-sm-2" for="year">Year :</label>
                            <div class="col-sm-4">
                                <input type="number" class="form-control" name="year" placeholder="year Here" required>
                                <p class="error year text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="sales_target">Sales target :</label>
                            <div class="col-sm-4">
                                <input type="number" class="form-control" name="sales_target" placeholder="sales_target Here" required>
                                <p class="error sales_target text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn" data-dismiss="modal">Close</a>
                    <button class="btn btn-warning" type="submit" id="addSalesmanTarget">
                        <span class="glyphicon glyphicon-plus"></span>Save salesman target
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
                    <form class="form-horizontal" role="form" action="{{url('salesmantargets')}}" id="salesman_target-update-form">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="salesman_id">Salesman :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="salesman_id" name="salesman_id" required>
                                    <option value="">Select Salesman</option>
                                    @foreach($salesmen as $salesman)
                                        <option value="{{$salesman->id}}">{{$salesman->salesmanName}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <label class="control-label col-sm-2" for="client_target">Client target :</label>
                            <div class="col-sm-4">
                                <input type="number" class="form-control" id="client_target" name="client_target" placeholder="client_target Here" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="month">Month :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="month" name="month" required>
                                    <option value="">Select Month</option>
                                    <option value="1">January </option>
                                    <option value="2">February </option>
                                    <option value="3">March </option>
                                    <option value="4">April </option>
                                    <option value="5">May </option>
                                    <option value="6">June </option>
                                    <option value="7">July </option>
                                    <option value="8">August </option>
                                    <option value="9">September </option>
                                    <option value="10">October </option>
                                    <option value="11">November </option>
                                    <option value="12">December </option>
                                </select>
                            </div>
                            <label class="control-label col-sm-2" for="year">Year :</label>
                            <div class="col-sm-4">
                                <input type="number" class="form-control" id="year" name="year" placeholder="year Here" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="sales_target">Sales target :</label>
                            <div class="col-sm-4">
                                <input type="number" class="form-control" id="sales_target" name="sales_target" placeholder="sales_target Here" required>
                            </div>
                            <label class="control-label col-sm-2" for="_method"></label>
                            <div class="col-sm-4">
                                <input type="hidden" name="_method" value="PUT">
                                <input type="hidden" id="id">
                            </div>
                        </div>
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