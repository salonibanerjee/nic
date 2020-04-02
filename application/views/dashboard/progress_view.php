<html>
    <body>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-9">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">{title}</h3>
                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" style="color: black"><i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" style="color: black"><i class="fas fa-times"></i></button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered">
                  <thead>                  
                    <tr>
                      <th style="width: 10px">SL</th>
                      <th>Project Name</th>
                      <th>Progress</th>
                      <th style="width: 40px">%</th>
                    </tr>
                  </thead>
                  <tbody>
                    {work_progress}
                    <tr>
                      <td>{sl_no}</td>
                      <td>{p_name}</td>
                      <td>
                        <div class="progress progress-xs">
                          <div class="progress-bar bg-{sign}" style="width: {progress}%"></div>
                        </div>
                      </td>
                      <td><span class="badge bg-{sign}">{progress}</span></td>
                    </tr>
                    {/work_progress}
                  </tbody>
                </table>
              </div>
            </div>
            <!-- /.card -->
          </div>
        </div>
      </div>
    </section>
    </body>
</html>