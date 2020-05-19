
  
        <div class="card">
          <div class="card-header bg-lime">
            <h3 class="card-title">Scheme wise physical work progress</h3>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse" style="color: black"><i class="fas fa-minus"></i>
              </button> 
              <button type="button" class="btn btn-tool"  data-toggle="modal" data-target="#progress" style="color: black"><i class="fas fa-edit"></i></button>
            </div>
          </div> 
          <div class="card-body">
            <table class="table table-bordered">
              <thead>                  
                <tr>
                  <th style="width: 10px">Location</th>
                  <th>Project Name</th>
                  <th>Progress</th>
                  <th style="width: 40px">%</th>
                </tr>
              </thead>
              <tbody>
                {work_progress}
                <tr>
                  <td>{location}</td>
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
  
