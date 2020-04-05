<html>
    <body>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Scheme wise physical work progress</h3>
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
          <div class="col-md-4">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Notifications</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img class="d-block w-100" src="https://placehold.it/900x500/39CCCC/ffffff&text=I+Love+Bootstrap" alt="First slide">
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="https://placehold.it/900x500/3c8dbc/ffffff&text=I+Love+Bootstrap" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="https://placehold.it/900x500/f39c12/ffffff&text=I+Love+Bootstrap" alt="Third slide">
                    </div>
                  </div>
                  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
      </div>
    </section>
    </body>
</html>