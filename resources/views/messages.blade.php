@if ($errors->any())
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content" style="color:red">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h1 class="modal-title" style="color:red">Oops!</h1>
        </div>
        <div class="modal-body">
          <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach
          </ul>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>

    </div>
  </div>
  <script type="text/javascript">
      $(window).load(function()
      {
          $('#myModal').modal('show');
      });
  </script>
@endif

<!-- Modal -->
<div class="modal fade" id="message" role="dialog" style="top: 150px">
  <div class="modal-dialog modal-sm">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h3 class="modal-title"></h3>
      </div>
      <div class="modal-body">
        <p class="wmessage"></p>
      </div>
    </div>

  </div>
</div>

@if (\Session::has('error'))
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content" style="color:red">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h1 class="modal-title" style="color:red">Oops!</h1>
        </div>
        <div class="modal-body">
          {{ Session::get('error') }}
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>

    </div>
  </div>
  <script type="text/javascript">
      $(window).load(function()
      {
          $('#myModal').modal('show');
      });
  </script>
@endif

@if (\Session::has('success'))
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content" style="color:green">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h1 class="modal-title" style="color:green">Congrats!</h1>
        </div>
        <div class="modal-body">
          {{ Session::get('success') }}
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>

    </div>
  </div>
  <script type="text/javascript">
      $(window).load(function()
      {
          $('#myModal').modal('show');
      });
  </script>
@endif