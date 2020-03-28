<html>
<body>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Alerts on Project</h3>
                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" style="color: black"><i class="fas fa-minus"></i></button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" style="color: black"><i class="fas fa-times"></i></button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-condensed">
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
                        <div class="progress progress-xs">
                          <div class="progress-bar bg-danger" style="width: {c5}%"></div>
                        </div>
                      </td>
                      <td><span class="badge bg-danger">{c5}%</span></td>
                    </tr>
                  {/data}
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
          </div>
        </div>
      </div>
    </section>
</body>
</html>