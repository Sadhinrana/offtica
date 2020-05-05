@extends('admin.layouts.app')

@section('breadcrumbhead')
    MiniCategory
    <small>Control panel</small>
@endsection

@section('breadcrumb')
    <li class="active">MiniCategory</li>
@endsection

@section('content')
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">MiniCategory</h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>MiniCategory name</th>
                    <th>SubCategory name</th>
                    <th>Category name</th>
                    <th>
                        action
                        <a href="#" class="addMiniCategory btn btn-success btn-sm">
                            <i class="fa fa-plus"></i>
                        </a>
                    </th>
                </tr>
                </thead>
                <tbody>
                @foreach($minicategories as $minicategory)
                    <tr id="minicategory{{$minicategory->id}}">
                        <td>{{$minicategory->miniCategoryName}}</td>
                        <td>{{$minicategory->subcategory->subCategoryName}}</td>
                        <td>{{$minicategory->subcategory->category->categoryName}}</td>
                        <td>
                            <div class="table-data-feature">
                                <a href="#" class="edit-minicategory btn btn-warning btn-sm" data-id="{{$minicategory->id}}" data-miniCategoryName="{{$minicategory->miniCategoryName}}" data-category_id="{{$minicategory->subcategory->category_id}}" data-subcategory_id="{{$minicategory->subcategory_id}}" data-subcategoryname="{{$minicategory->subcategory->subCategoryName}}">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <a href="#" class="delete-minicategory btn btn-danger btn-sm" data-id="{{$minicategory->id}}">
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
                    <form class="form-horizontal" role="form" action="{{url('minicategories')}}" id="add_mini_form">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="category">Category</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="category_id" id="category_id">
                                    <option value="">Select category</option>
                                    @foreach($categories as $category)
                                        <option value="{{$category->id}}">{{$category->categoryName}}</option>
                                    @endforeach
                                </select>
                                <p class="error category_id text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="subcategory_id">SubCategory :</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="subcategory_id" id="subcategory_id">
                                    <option value="">Select subcategory</option>
                                </select>
                                <p class="error subcategory_id text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="miniCategoryName">MiniCategory :</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="miniCategoryName"
                                       placeholder="miniCategoryName Here" required>
                                <p class="error miniCategoryName text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn" data-dismiss="modal">Close</a>
                    <button class="btn btn-warning" type="submit" id="addMiniCategory">
                        <span class="glyphicon glyphicon-plus"></span>Save MiniCategory
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
                    <form class="form-horizontal" role="modal" action="{{url('minicategories')}}" id="update_mini_form">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="category">Category</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="category_id" id="ecategory_id">
                                    <option value="">Select category</option>
                                    @foreach($categories as $category)
                                        <option value="{{$category->id}}">{{$category->categoryName}}</option>
                                    @endforeach
                                </select>
                                <p class="error category_id text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="subcategory_id">SubCategory :</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="subcategory_id" id="esubcategory_id">
                                    <option value="">Select subcategory</option>
                                </select>
                                <p class="error subcategory_id text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="miniCategoryName">MiniCategory :</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="miniCategoryName" id="miniCategoryName"
                                       placeholder="miniCategoryName Here" required>
                                <p class="error miniCategoryName text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <input type="hidden" name="_method" value="PUT">
                        <input type="hidden" id="fid">
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