

<?php
include 'inc/header.php';
include 'inc/navbar.php';
include_once 'Controller/Homecontroller.php';
?>

<?php
function console_log($output, $with_script_tags = true) {
    $js_code = 'console.log(' . json_encode($output, JSON_HEX_TAG) . 
');';
    if ($with_script_tags) {
        $js_code = '<script>' . $js_code . '</script>';
    }
    echo $js_code;
}
?>

<div class="available_page_area">

  <?php
  $home = new Homecontroller();
  $data = $home->gethomeDetails();
  if (!$data) {
    echo "<p>No data found</p>";
  }
  ?>

  <?php
  if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['search_house'])) {
    $arr = explode('-', $_POST['rental_value']);
    $range1 = substr($arr[0], 1);
    $range2 = substr($arr[0], 2);

    $data = $home->searchHome($range1, $range2, $_POST);
  }
  ?>
  <?= console_log($data); ?>
  <?php
  if ($_SERVER['REQUEST_METHOD'] == 'GET' && isset($_GET['search_cover'])) {
    $arr = explode('-', $_GET['rental_value']);
    $range1 = substr($arr[0], 1);
    $range2 = substr($arr[0], 2);

    $data = $home->searchHome($range1, $range2, $_GET);
  }


  ?>

<?= console_log($data); ?>

  <div class="available_page_main container">

    <div class="search_house">
      <div class="search_house_inner card">
        <!-- <div class="well search_card card-body">
          <form class="search_house_form" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
            <input type="text" name="address" class="form-control" value="<?php if (isset($_POST['address'])) {
                                                                            echo $_POST['address'];
                                                                          } ?>" placeholder="Address">
            <select class="form-control" style="background-color:lavender;" name="house_type">
              <option value="" selected disabled>Rent Type</option>
              <option value="Family" <?php if (isset($_POST['house_type']) && $_POST['house_type'] == 'Family') {
                                        echo "selected";
                                      } ?>>Family</option>
              <option value="Bachelor" <?php if (isset($_POST['house_type']) && $_POST['house_type'] == 'Bachelor') {
                                          echo "selected";
                                        } ?>>Bachelor</option>
              <option value="Sublet" <?php if (isset($_POST['house_type']) && $_POST['house_type'] == 'Sublet') {
                                        echo "selected";
                                      } ?>>Sub-Let</option>
              <option value="Mess/Hostel" <?php if (isset($_POST['house_type']) && $_POST['house_type'] == 'Mess/Hostel') {
                                            echo "selected";
                                          } ?>>Hostel/Mess</option>
            </select>
            <div id="range_cover">
              <label for="input_range_cover">Price range:</label>
              <input type="text" id="input_range_cover" name="rental_value" readonly style="border:0; color:#f6931f; font-weight:bold;">
              <div id="main_range_cover" class="" title="Tap left or right button to set more precise value."></div>
            </div>

            <input type="submit" name="search_house" class="btn btn-info" value="Search house">
          </form>
        </div> -->
      </div>
    </div>

    <div class="all_houses row">

      <?php
      foreach ($data as $value) {
      ?>
        <div class="single_houses card">
          <div class="single_house_inner card-body">
            <div class="house_title">
              <p style="font-weight:600;"> <i class="fas fa-map-marker-alt"></i> <?php echo $value['address']; ?> </p>
              <p class="rent">Price : <?php echo $value['rental_value']; ?> TK
                <br>
                Bedroom : <?php if(isset($value['bedroom'])): ?>
                               <?php echo $value["bedroom"]; ?>
                        <?php endif; ?>
                <br>
                Size of House in sq. ft : <?php if(isset($value['sizehouse'])): ?>
                                <?php echo $value["sizehouse"]; ?>
                          <?php endif; ?>
                <br>
                Bathroom : <?php if(isset($value['bathroom'])): ?>
                          <?php echo $value["bathroom"]; ?>
                              <?php endif; ?>
              </p>
            </div>
            <div class="house_img">
              <img src="assets/images/house/house17.png" alt="House">
            </div>
            <a href="housedetails.php?house_id=<?php echo $value['id']; ?>">Details</a>
          </div>
        </div>

      <?php } ?>

    </div>



  </div>
</div>




<?php
include 'inc/footer.php';
?>

<script>
 $(function(){
   $( "#main_range_cover" ).slider({
         range: true,
         min: 5000,
         max: 100000,
         values: [<?php if(isset($range1) && isset($range2)){
           echo $range1.','.$range2;}
           else{?> 5000,100000 <?php } ?>],
         slide: function( event, ui ) {
           $( "#input_range_cover" ).val( "TK " + ui.values[ 0 ] + " - TK " + ui.values[ 1 ] );
         }
    });
    $( "#input_range_cover" ).val( "TK " + $( "#main_range_cover" ).slider( "values", 0 ) +
     " - TK " + $( "#main_range_cover" ).slider( "values", 1 ) );
   });
</script>