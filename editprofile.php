<?php
  include 'inc/header.php';
  include 'inc/navbar.php';
  include 'Controller/Homecontroller.php';
 ?>

 <?php
   $home = new Homecontroller();
   $id=0;
   if(isset($_GET['id'])){
     $id = $_GET['id'];
   }


   if(($_SERVER["REQUEST_METHOD"] === "POST") && isset($_POST['editprofile'])) {
     $msg = $home->updateUser($id,$_POST,$_FILES);
   }
   $user = $home->getUser($id);
  ?>


   <div class="edit_area" style="margin-top:120px;">
     <div class="edit_area_main container">
       <form class="edit_profile_form" action="<?php echo $_SERVER['PHP_SELF'].'?id='.$id; ?>" method="post" enctype="multipart/form-data">
         <div class="fam_bac_sub">
           <div class="image_input">
             <p>Update Your Profile Picture</p>
             <div class="inner_image_input">
               <div class="main_input">
                 <input type="file" class="form-control-file" name="profile_img" placeholder="Update Profile Image" style="float: left;margin-right: 20px;margin-top:20px;">
                 <img src="<?php echo $user->pic; ?>" height="100px;" width="90px;" alt="Profile Image">
               </div>
             </div>
           </div>
           <div class="fam_bac_sub_inner">
             <div class="fname">
              <p>First Name</p>
               <input type="text" class="form-control" name="fname" placeholder="First Name" value="<?php echo $user->fname; ?>" required="true">
             </div>
             <div class="lname">
             <p>First Name</p>
               <input type="text" class="form-control" name="lname" placeholder="Last Name"  value="<?php echo $user->lname; ?>" required="true">
             </div>
             <div class="address">
             <p>Address</p>
               <input type="text" class="form-control" name="address" placeholder="Your Address"  value="<?php if(isset($user->address)) echo $user->address; ?>" required="true">
             </div>
             <div class="phone">
             <p>Phone Number</p>
               <input type="text" class="form-control" name="phone_number" placeholder="Phone No"  value="<?php if(isset($user->phone_number)) echo $user->phone_number; ?>" required="true">
             </div>
             <div class="nid">
             <p>NID</p>
               <input type="text" class="form-control" name="nid" placeholder="Your NID No"  value="<?php if(isset($user->nid))   echo $user->nid; ?>" required="true">
             </div>

             <div class="description">
             <p>Description</p>
               <textarea class="form-control" rows="8" cols="80" placeholder="Description(Optional)" name="description" value="<?php if(isset($user->description))  echo $user->description; ?>" required="true"></textarea>
             </div>
             <p class="text-center" style="margin-top:10px;">
               <input type="submit" style="margin-bottom:0px;" class="btn btn-info" name="editprofile" value="Update Profile">
             </p>
           </div>
         </div>
       </form>
     </div>
   </div>


 <?php
  include 'inc/footer.php';
  ?>
