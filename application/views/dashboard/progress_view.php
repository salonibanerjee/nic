<div class="card">
  <div class="card-header bg-lime">
    <h3 class="card-title">Scheme Wise Progress</h3>
    
    <div class="card-tools">
      <button type="button" class="btn btn-tool" data-card-widget="collapse" style="color: black"><i class="fas fa-minus"></i>
      </button> 
      <button type="button" class="btn btn-tool"  data-toggle="modal" data-target="#progress" style="color: black"><i class="fas fa-edit"></i></button>
    </div>
  </div> 
  <div class="card-body p-0" style="height: 223px; overflow-y: auto">
    <table class="table">
      <thead>                  
        <tr>
          <th>Project Name</th>
          <th>Progress</th>
          <th style="width: 40px">%</th>
        </tr>
      </thead>
      <tbody>
        {work_progress}
        <tr>
          <td>{p_name}</td>
          <td>
            <div class="progress progress-xs mt-2">
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