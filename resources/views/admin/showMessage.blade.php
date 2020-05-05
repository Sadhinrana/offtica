@extends('admin.layouts.app')

@section('breadcrumbhead')
    Message
    <small>Control panel</small>
@endsection

@section('breadcrumb')
    <li class="active">Message</li>
@endsection

@section('content')
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Message</h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>E-mail</th>
                    <th>Subject</th>
                    <th>Message</th>
                    <th>Date</th>
                    <th>action</th>
                </tr>
                </thead>
                <tbody>
                    <tr id="message{{$message->id}}">
                        <td>{{$message->name}}</td>
                        <td>{{$message->email}}</td>
                        <td>{{$message->subject}}</td>
                        <td>{{$message->message}}</td>
                        <td class="center">{{$message->created_at}}</td>
                        <td>
                            <div class="table-data-feature">
                                <a href="#" class="delete-message btn btn-danger btn-sm" data-id="{{$message->id}}">
                                    <i class="fa fa-trash"></i>
                                </a>
                                <a href="#" class="email-message btn btn-success btn-sm" data-id="{{$message->id}}" data-to="{{$message->email}}" data-subject="{{$message->subject}}">
                                    <i class="fa fa-envelope"></i>
                                </a>
                            </div>
                        </td>
                    </tr>
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
                    <!-- quick email widget -->
                    <div class="box box-info">
                        <div class="box-header">
                            <i class="fa fa-envelope"></i>

                            <h3 class="box-title">Quick Email</h3>
                            <!-- tools box -->
                            <div class="pull-right box-tools">
                                <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip"
                                        title="Remove">
                                    <i class="fa fa-times"></i></button>
                            </div>
                            <!-- /. tools -->
                        </div>
                        <form action="{{url('/sendMail')}}" id="sendMail" onsubmit="sendMail(event)">
                            <!-- /.box-header -->
                            <div class="success text-center alert alert-success hidden" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            </div>
                            <div class="box-body">
                                <div class="form-group">
                                    <input class="form-control" name="mailto" id="to" placeholder="To:">
                                    <p class="error email text-center alert alert-danger hidden"></p>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" name="subject" id="subject" placeholder="Subject:">
                                    <p class="error subject text-center alert alert-danger hidden"></p>
                                </div>
                                <div class="form-group">
                                    <textarea id="editor1" name="mailbody" class="form-control" style="height: 300px"></textarea>
                                    <p class="error mailbody text-center alert alert-danger hidden"></p>
                                </div>
                                <div class="form-group">
                                    <div class="btn btn-default btn-file">
                                        <i class="fa fa-paperclip"></i> Attachment
                                        <input type="file" name="attachment">
                                    </div>
                                    <p class="help-block">Max. 32MB</p>
                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <div class="pull-right">
                                    <button type="button" class="btn btn-default"><i class="fa fa-pencil"></i> Draft</button>
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i> Send</button>
                                </div>
                                <button type="reset" class="btn btn-default"><i class="fa fa-times"></i> Discard</button>
                            </div>
                            <!-- /.box-footer -->
                        </form>
                    </div>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn" data-dismiss="modal">Close</a>
                </div>
            </div>
        </div>
    </div>

    {{-- Modal Form Delete Post --}}
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="largeModalLabel">Large Modal</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    {{-- Form Delete Post --}}
                    <input type="hidden" name="_method" value="DELETE">
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