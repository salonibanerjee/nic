<div class="row">
  <div class="col">
    <div class="card">
      <div class="card-header" style="background-color: #ffb442;">
        <h3 class="card-title">Alerts on Schemes</h3>
        <div class="card-tools">
          <button type="button" class="btn btn-tool" data-card-widget="collapse" style="color: black"><i class="fas fa-minus"></i></button>
          <button type="button" class="btn btn-tool"  data-toggle="modal" data-target="#alert_filter" style="color: black"><i class="fas fa-edit"></i></button>
      </div>
      </div>
      <!-- /.card-header -->
      <div class="card-body p-0">
        <div class="table-responsive">
        <table class="table">
          <thead>
            <tr>
              <th style="width: 10px">SL.</th>
              <th>Project Names</th>
              <th>Fund Alloted</th>
              <th>Fund Utilised</th>
              <th>Progress</th>
              <th style="width: 25px">%</th>
            </tr>
          </thead>
          <tbody>
          {data}
            <tr>
              <td>{c1}</td>
              <td>{c2}</td>
              <td>{c3}</td>
              <td>{c4}</td>
              <td>
                <div class="progress progress-xs mt-2">
                  <div class="progress-bar bg-danger" style="width: {c5}%"></div>
                </div>
              </td>
              <td><span class="badge bg-danger">{c5}%</span></td>
            </tr>
          {/data}
          </tbody>
        </table>
        </div>
      </div>
      <!-- /.card-body -->
    </div>
  </div>
</div>

<!-- Modal -->
<div id="alert_filter" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm modal-dialog-centered">
      <!-- Modal content-->
      <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Filter</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <?php echo form_open('','role="form" method="POST" id="form"');?>
          <!--<form role='form' method="post" id='form'>-->
          <div class="modal-body">
            <div class="row">
              <div class="form-group">
                <label class='mb-1'>Enter Threshold Value for Fund Utilisation </label>
                <input type="number" class="form-control" name="alert_input" id="alert_input" placeholder="Enter Threshold %">
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="submit" name="alert_submit" id="alert_submit" class="btn btn-block btn-outline-success btn-sm">Apply Filter</button>
          </div>
      </form>
      </div>
  </div>
</div> 