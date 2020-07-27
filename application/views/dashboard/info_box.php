
  
      <!-- Small boxes (Stat box) -->
      <div class="row">
        {data_list}
        <div class="col-lg-4 col-6">
          <!-- small box -->
          <div class="small-box bg-{color}">
            <div class="inner">
              <h3>{num}</h3>
              <p>{desc}</p>
            </div>
            <div class="icon">
              <i class="ion {icon}"></i>
            </div>

            <div class="progress bg-white" style="height:10px;  border-radius:10px; margin-left:5px; margin-right:5px;">
                  <div class="progress-bar bg-black" style=" border-radius:20px; width: {tot}; height:60%; margin:2px;"></div>
            </div>
            <span class="progress-description" style="padding-left:5px;">
              {text}
            </span>
          </div>
        </div>
        {/data_list}
      </div>
    