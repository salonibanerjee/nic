
  
      <!-- Small boxes (Stat box) -->
      <div class="row">
        {data_list}
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-{color}">
            <div class="inner">
              <h3>{num}</h3>
              <p>{desc}</p>
            </div>
            <div class="icon">
              <i class="ion {icon}"></i>
            </div>
            <div class="progress">
                  <div class="progress-bar" style="width: 70%"></div>
            </div>
            <span class="progress-description">
                  70% Increase in 30 Days
            </span>
            <!--<a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>-->
          </div>
        </div>
        {/data_list}
      </div>
    