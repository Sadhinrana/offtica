@extends('admin.layouts.app')

@section('breadcrumbhead')
    Product
    <small>Control panel</small>
@endsection

@section('breadcrumb')
    <li class="active">Product</li>
@endsection

@section('content')
    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Product</h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Product Image</th>
                    <th>Product SKU</th>
                    <th>Product Category</th>
                    <th>Product SubCategory</th>
                    <th>Product MiniCategory</th>
                    <th>Product Industry</th>
                    <th>Product Brand</th>
                    <th>Product SalePrice</th>
                    <th>
                        action
                        <a href="#" class="addProduct btn btn-success btn-sm">
                            <i class="fa fa-plus"></i>
                        </a>
                    </th>
                </tr>
                </thead>
                <tbody>
                @foreach($products as $product)
                    <tr id="product{{$product->id}}">
                        <td>{{$product->productName}}</td>
                        <td><img src="{{asset('storage/images/product/'.$product->image->image1)}}" height="100px" width="100px"/></td>
                        <td>{{$product->sku}}</td>
                        <td>{{$product->category->categoryName}}</td>
                        <td>{{$product->subcategory->subCategoryName}}</td>
                        <td>{{$product->minicategory->miniCategoryName}}</td>
                        <td>{{$product->industry->industryName}}</td>
                        <td>{{$product->brand->brandName}}</td>
                        <td>৳ {{$product->salePrice}}</td>
                        <td>
                            <div class="table-data-feature">
                                <a href="#" class="show-product btn btn-info btn-sm" data-id="{{$product->id}}" data-productName="{{$product->productName}}" data-image="{{$product->image->image1}}" data-sku="{{$product->sku}}" data-category="{{$product->category->categoryName}}" data-subcategory="{{$product->subcategory->subCategoryName}}" data-minicategory="{{$product->minicategory->miniCategoryName}}" data-industry="{{$product->industry->industryName}}" data-brand="{{$product->brand->brandName}}" data-color="@foreach($product->colors as $color) {{$color->color}} @endforeach" data-size="@foreach($product->sizes as $size) {{$size->size}} @endforeach" data-tag="@foreach($product->tags as $tag) {{$tag->tag}} @endforeach" data-salePrice="{{$product->salePrice}}" data-regularPrice="{{$product->regularPrice}}" data-availablity="@if($product->availablity == 0) Yes @else No @endif" data-type="@if($product->type == 0) Featured @else Non-Featured @endif" data-offer="@if($product->offer == 0) No @else Yes @endif" data-description="{{$product->description}}" data-specification="{{$product->specification}}">
                                    <i class="fa fa-eye"></i>
                                </a>
                                <a href="#" class="edit-product btn btn-warning btn-sm" data-id="{{$product->id}}" data-productName="{{$product->productName}}" data-sku="{{$product->sku}}" data-category_id="{{$product->category_id}}" data-subcategory_id="{{$product->subcategory_id}}" data-minicategory_id="{{$product->minicategory_id}}" data-minicategory="{{$product->minicategory->miniCategoryName}}" data-industry_id="{{$product->industry_id}}" data-brand_id="{{$product->brand_id}}" data-color="@foreach($product->colors as $color) {{$color->color}} @endforeach" data-size="@foreach($product->sizes as $size) {{$size->size}} @endforeach" data-tag="@foreach($product->tags as $tag) {{$tag->tag}} @endforeach" data-salePrice="{{$product->salePrice}}" data-regularPrice="{{$product->regularPrice}}" data-availablity="{{$product->availablity}}" data-offer="{{$product->offer}}" data-type="{{$product->type}}" data-description="{{$product->description}}" data-specification="{{$product->specification}}" data-subcategory="{{$product->subcategory->subCategoryName}}">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <a href="#" class="delete-product btn btn-danger btn-sm" data-id="{{$product->id}}">
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
                    <form class="form-horizontal" enctype="multipart/form-data" role="form" id="product-form">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="productName">Product Name :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="productName" name="productName"
                                       placeholder="productName Here" required>
                                <p class="error productName text-center alert alert-danger hidden"></p>
                            </div>
                            <label class="control-label col-sm-2" for="sku">Product sku :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="sku" name="sku"
                                       placeholder="Product sku Here" required>
                                <p class="error sku text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="category_id">Product Category :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="category_id" name="category_id" required>
                                        <option value="">Select Category</option>
                                    @foreach($categories as $category)
                                        <option value="{{$category->id}}">{{$category->categoryName}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <label class="control-label col-sm-2" for="subcategory_id">Product SubCategory :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="subcategory_id" name="subcategory_id" required>
                                    <option value="">Select SubCategory</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="minicategory_id">Product MiniCategory :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="minicategory_id" name="minicategory_id" required>
                                    <option value="">Select MiniCategory</option>
                                </select>
                            </div>
                            <label class="control-label col-sm-2" for="brand_id">Product Brand :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="brand_id" name="brand_id" required>
                                    <option value="">Select Brand</option>
                                    @foreach($brands as $brand)
                                        <option value="{{$brand->id}}">{{$brand->brandName}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="industry_id">Product Industry :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="industry_id" name="industry_id" required>
                                        <option value="">Select Industry</option>
                                    @foreach($industries as $industry)
                                        <option value="{{$industry->id}}">{{$industry->industryName}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <label class="control-label col-sm-2" for="type">Product Type :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="type" name="type" required>
                                    <option value="0">Featured</option>
                                    <option value="1">Non-Featured</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="availablity">Product Availablity :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="availablity" name="availablity" required>
                                    <option value="0">Available</option>
                                    <option value="1">Not-Available</option>
                                </select>
                            </div>
                            <label class="control-label col-sm-2" for="regularPrice">Product regularPrice :</label>
                            <div class="col-sm-4">
                                <input type="number" class="form-control" id="regularPrice" name="regularPrice"
                                       placeholder="Product regularPrice Here">
                                <p class="error regularPrice text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="salePrice">Product salePrice :</label>
                            <div class="col-sm-4">
                                <input type="number" class="form-control" id="salePrice" name="salePrice"
                                       placeholder="Product salePrice Here">
                                <p class="error salePrice text-center alert alert-danger hidden"></p>
                            </div>
                            <label class="control-label col-sm-2" for="image1">Product Image One :</label>
                            <div class="col-sm-4">
                                <input type="file" class="form-control" id="image1" name="image1" required>
                                <p class="error image1 text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="image2">Product Image Two :</label>
                            <div class="col-sm-4">
                                <input type="file" class="form-control" id="image2" name="image2">
                                <p class="error image2 text-center alert alert-danger hidden"></p>
                            </div>
                            <label class="control-label col-sm-2" for="image3">Product Image Three :</label>
                            <div class="col-sm-4">
                                <input type="file" class="form-control" id="image3" name="image3">
                                <p class="error image3 text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="image4">Product Image Four :</label>
                            <div class="col-sm-4">
                                <input type="file" class="form-control" id="image4" name="image4">
                                <p class="error image4 text-center alert alert-danger hidden"></p>
                            </div>
                            <label class="control-label col-sm-2" for="image5">Product Image Five :</label>
                            <div class="col-sm-4">
                                <input type="file" class="form-control" id="image5" name="image5">
                                <p class="error image5 text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="color">Product Color :</label>
                            <div class="col-sm-10">
                                <div class="form-group">
                                    <div class="checkbox">
                                        @foreach($colors as $color)
                                        <label>
                                            <input type="checkbox" name="color[]" value="{{$color->id}}">
                                            {{$color->color}}
                                        </label>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="size">Product Size :</label>
                            <div class="col-sm-10">
                                <div class="form-group">
                                    <div class="checkbox">
                                        @foreach($sizes as $size)
                                        <label>
                                            <input type="checkbox" name="size[]" value="{{$size->id}}">
                                            {{$size->size}}
                                        </label>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="tag">Product Tag :</label>
                            <div class="col-sm-10">
                                <div class="form-group">
                                    <div class="checkbox">
                                        @foreach($tags as $tag)
                                        <label>
                                            <input type="checkbox" name="tag[]" value="{{$tag->id}}">
                                            {{$tag->tag}}
                                        </label>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="description">Product Description :</label>
                            <div class="col-sm-10">
                                <textarea id="editor1" name="description" rows="10" cols="80" required></textarea>
                                <p class="error description text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="specification">Product Specification :</label>
                            <div class="col-sm-10">
                                <textarea id="editor" name="specification" rows="10" cols="80"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-10" for="brandLogo"></label>
                            <div class="col-sm-2">
                                <button class="btn btn-success" type="submit">
                                    <span class="glyphicon glyphicon-plus"></span>Save product
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-dismiss="modal">
                        <span class="glyphicon glyphicon"></span>close
                    </button>
                </div>
            </div>
        </div>
    </div>

    <div class="clearfix"></div>

    {{-- Modal Form Update Post --}}
    <div id="update" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h2 class="modal-title" id="largeModalLabel">Large Modal</h2>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" enctype="multipart/form-data" role="form" id="updateProduct">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="productName">Product Name :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="eproductName" name="productName"
                                       placeholder="productName Here" required>
                                <p class="error productName text-center alert alert-danger hidden"></p>
                            </div>
                            <label class="control-label col-sm-2" for="sku">Product sku :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="esku" name="sku"
                                       placeholder="Product sku Here" required>
                                <p class="error sku text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="category_id">Product Category :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="ecategory_id" name="category_id" required>
                                    <option value="">Select Category</option>
                                    @foreach($categories as $category)
                                        <option value="{{$category->id}}">{{$category->categoryName}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <label class="control-label col-sm-2" for="subcategory_id">Product SubCategory :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="esubcategory_id" name="subcategory_id" required>
                                    <option value="">Select SubCategory</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="minicategory_id">Product MiniCategory :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="eminicategory_id" name="minicategory_id" required>
                                    <option value="">Select MiniCategory</option>
                                </select>
                            </div>
                            <label class="control-label col-sm-2" for="brand_id">Product Brand :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="ebrand_id" name="brand_id" required>
                                    <option value="">Select Brand</option>
                                    @foreach($brands as $brand)
                                        <option value="{{$brand->id}}">{{$brand->brandName}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="industry_id">Product Industry :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="eindustry_id" name="industry_id" required>
                                    <option value="">Select Industry</option>
                                    @foreach($industries as $industry)
                                        <option value="{{$industry->id}}">{{$industry->industryName}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <label class="control-label col-sm-2" for="type">Product Type :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="etype" name="type" required>
                                    <option value="0">Featured</option>
                                    <option value="1">Non-Featured</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="availablity">Product Availablity :</label>
                            <div class="col-sm-4">
                                <select class="form-control" id="eavailablity" name="availablity" required>
                                    <option value="0">Available</option>
                                    <option value="1">Not-Available</option>
                                </select>
                            </div>
                            <label class="control-label col-sm-2" for="regularPrice">Product regularPrice :</label>
                            <div class="col-sm-4">
                                <input type="number" class="form-control" id="eregularPrice" name="regularPrice"
                                       placeholder="Product regularPrice Here">
                                <p class="error regularPrice text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="salePrice">Product salePrice :</label>
                            <div class="col-sm-4">
                                <input type="number" class="form-control" id="esalePrice" name="salePrice"
                                       placeholder="Product salePrice Here">
                                <p class="error salePrice text-center alert alert-danger hidden"></p>
                            </div>
                            <label class="control-label col-sm-2" for="image1">Product Image One :</label>
                            <div class="col-sm-4">
                                <input type="file" class="form-control" id="image1" name="image1">
                                <p class="error image1 text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="image2">Product Image Two :</label>
                            <div class="col-sm-4">
                                <input type="file" class="form-control" id="image2" name="image2">
                                <p class="error image2 text-center alert alert-danger hidden"></p>
                            </div>
                            <label class="control-label col-sm-2" for="image3">Product Image Three :</label>
                            <div class="col-sm-4">
                                <input type="file" class="form-control" id="image3" name="image3">
                                <p class="error image3 text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="image4">Product Image Four :</label>
                            <div class="col-sm-4">
                                <input type="file" class="form-control" id="image4" name="image4">
                                <p class="error image4 text-center alert alert-danger hidden"></p>
                            </div>
                            <label class="control-label col-sm-2" for="image5">Product Image Five :</label>
                            <div class="col-sm-4">
                                <input type="file" class="form-control" id="image5" name="image5">
                                <p class="error image5 text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="color">Product Color :</label>
                            <div class="col-sm-10">
                                <div class="form-group">
                                    <div class="checkbox">
                                        @foreach($colors as $color)
                                            <label>
                                                <input type="checkbox" class="color" name="color[]" value="{{$color->id}}" data-value="{{$color->color}}">{{$color->color}}
                                            </label>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="size">Product Size :</label>
                            <div class="col-sm-10">
                                <div class="form-group">
                                    <div class="checkbox">
                                        @foreach($sizes as $size)
                                            <label>
                                                <input type="checkbox" class="size" name="size[]" value="{{$size->id}}" data-value="{{$size->size}}">
                                                {{$size->size}}
                                            </label>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="tag">Product Tag :</label>
                            <div class="col-sm-10">
                                <div class="form-group">
                                    <div class="checkbox">
                                        @foreach($tags as $tag)
                                            <label>
                                                <input type="checkbox" class="tag" name="tag[]" value="{{$tag->id}}" data-value="{{$tag->tag}}">
                                                {{$tag->tag}}
                                            </label>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="description">Product Description :</label>
                            <div class="col-sm-10">
                                <textarea id="uDescription" name="description" rows="10" cols="80" required></textarea>
                                <p class="error description text-center alert alert-danger hidden"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="specification">Product Specification :</label>
                            <div class="col-sm-10">
                                <textarea id="uSpecification" name="specification" rows="10" cols="80"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-10" for="brandLogo"><input type="hidden" id="ID"></label>
                            <div class="col-sm-2">
                                <button class="btn btn-warning" type="submit">
                                    <span class="glyphicon glyphicon-edit"></span>Update product
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning" data-dismiss="modal">
                        <span class="glyphicon glyphicon"></span>close
                    </button>
                </div>
            </div>
        </div>
    </div>

    <div class="clearfix"></div>

    {{-- Modal Form Show POST --}}
    <div id="show" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h2 class="modal-title" id="largeModalLabel">Large Modal</h2>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label for="ID" class="control-label col-sm-2">ID :</label>
                            <div class="col-sm-4">
                                <input type="number" class="form-control" id="i" disabled>
                            </div>
                            <label class="control-label col-sm-2" for="Product image">Product image :</label>
                            <div class="col-sm-4"><img id="img" style="height: 200px;"/></div>
                        </div>
                        <div class="form-group">
                            <label for="Product sku" class="control-label col-sm-2">Product sku :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="sk" disabled>
                            </div>
                            <label for="Product type" class="control-label col-sm-2">Product type :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="tp" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Product category" class="control-label col-sm-2">Product category :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="ct" disabled>
                            </div>
                            <label for="Product subcategory" class="control-label col-sm-2">Product subcategory :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="sct" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Product miniCategory" class="control-label col-sm-2">Product miniCategory :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="mnctgr" disabled>
                            </div>
                            <label for="Product industry" class="control-label col-sm-2">Product industry :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="in" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Product brand" class="control-label col-sm-2">Product brand :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="br" disabled>
                            </div>
                            <label for="Product availablity" class="control-label col-sm-2">Product availablity :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="av" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Product offer" class="control-label col-sm-2">Product offer :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="of" disabled>
                            </div>
                            <label for="Product regularPrice" class="control-label col-sm-2">Product regularPrice :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="rPrice" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Product salePrice" class="control-label col-sm-2">Product salePrice :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="sPrice" disabled>
                            </div>
                            <label for="Product color" class="control-label col-sm-2">Product color :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="cl" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Product size" class="control-label col-sm-2">Product size :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="sz" disabled>
                            </div>
                            <label for="Product tag" class="control-label col-sm-2">Product tag :</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="tg" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="Product description">Product description :</label>
                            <div id="des" class="col-sm-10"></div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="Product specification">Product specification :</label>
                            <div id="spc" class="col-sm-10"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="clearfix"></div>

    {{-- Modal Form Delete Post --}}
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

@section('script')
        // instance, using default configuration.
        CKEDITOR.replace('uDescription')
        CKEDITOR.replace('uSpecification')
@endsection