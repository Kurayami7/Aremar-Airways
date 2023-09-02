<?php include_once 'helpers/helper.php'; ?>
<?php subview('header.php');    ?>
<link rel="stylesheet" href="assets/css/form.css">
<style>

.rating {
  display: inline-block;
  position: relative;
  height: 50px;
  line-height: 50px;
  font-size: 50px;
}
.rating label {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  cursor: pointer;
}

.rating label:last-child {
  position: static;
}

.rating label:nth-child(1) {
  z-index: 5;
}

.rating label:nth-child(2) {
  z-index: 4;
}

.rating label:nth-child(3) {
  z-index: 3;
}

.rating label:nth-child(4) {
  z-index: 2;
}

.rating label:nth-child(5) {
  z-index: 1;
}

.rating label input {
  position: absolute;
  top: 0;
  left: 0;
  opacity: 0;
}

.rating label .icon {
  float: left;
  color: transparent;
}

.rating label:last-child .icon {
  color: #000;
}

.rating:not(:hover) label input:checked ~ .icon,
.rating:hover label:hover input ~ .icon {
  color: #09f;
}

.rating label input:focus:not(:checked) ~ .icon:last-child {
  color: #000;
  text-shadow: 0 0 5px #09f;
}  
body {
  /*background: #bdc3c7;  /* fallback for old browsers */
 /* background: -webkit-linear-gradient(to right, #2c3e50, #bdc3c7);  /* Chrome 10-25, Safari 5.1-6 */
  /*background: linear-gradient(to right, #2c3e50, #bdc3c7); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background-color: #74EBD5;
background-image: linear-gradient(90deg, #74EBD5 0%, #9FACE6 100%);


color:white;

}
@font-face {
  font-family: 'product sans';
  src: url('assets/css/Product Sans Bold.ttf');
  }
h1 {
  font-size: 50px !important;
  margin-bottom: 6vh; 
  padding-top: 2vh;
  font-family :'product sans' !important;
  font-family :'product sans' !important;
  text-align: center;
}

textarea {
  color: cornflowerblue !important;
  border :3px solid #31B0D5 !important;
  background-color: whitesmoke !important;
  font-weight: bold !important;
}
textarea:focus {
  outline-style: none !important;
  outline: none !important;
}
*:focus {
    outline: none !important;
}
input {
    border :0px !important;
    border-bottom: 2px solid #31B0D5 !important;
    color :cornflowerblue !important;
    border-radius: 0px !important;
    font-weight: bold !important;
    border: none;
    border-bottom: 2px solid #31B0D5;      
  }
  label {
    color : #79BAEC !important;
    font-size: 19px;
  }  
  div.form-group label {
    color: cornflowerblue !important;
    font-weight: bold;
  }
  div.rating label{
    font-size: 40px !important;
  }
.input-group {
  position: relative;
  display: inline-block;
  width: 100%;
}
.form-box {
  padding: 40px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);  
}

.justify-content-center {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  margin: 2.5vw;
}

.container {
  background-color: #fff;
  color: black;
  font-family: lato;
  border: 6px ridge black;
  /* box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); */
}

.soarP {
  font-size: large;
  font-weight: bold;
}

</style>

<main>
<?php
if(isset($_GET['error'])) {
    if($_GET['error'] === 'invalidemail') {
        echo '<script>alert("Invalid email")</script>';
    } else if($_GET['error'] === 'sqlerror') {
        echo"<script>alert('Database error')</script>";
    } else if($_GET['error'] === 'success') {
      echo"<script>alert('Thank you for your Feedback')</script>";
    } 
}
?>
<div class="container mb-4">
  <h1> <i class="far fa-comment-alt"></i> About Us</h1>
  <div class="row justify-content-center">
 

  <h3>Welcome to Your Flight Booking at AREMAR AIRLINES!</h3>

<p>With AREMAR AIRLINES, we are more than just a booking platform; we're your ultimate travel companion, dedicated to making your journey seamless, exciting, and memorable. Our passion for travel drives us to provide you with a hassle-free and personalized experience from the moment you start planning until you touch down at your destination.</p>

<h2>Our Commitment:</h2>
<p>With a world of destinations waiting to be explored, we're here to help you embark on your next adventure. Our user-friendly interface and advanced search tools ensure that finding the perfect flight is easy and enjoyable. Whether you're a solo traveler, a couple seeking a romantic getaway, a family planning a vacation, or a business professional on the move, we have flights tailored to your needs.</p>

<h2>Why Choose Us?</h2>
<ol>
    <li><strong>Wide Range of Options:</strong> We collaborate with a vast network of airlines to offer you a diverse selection of flights, routes, and price points. No matter your budget or preferences, we have options that suit you.</li>
    <li><strong>Easy Booking Process:</strong> Our streamlined booking process is designed to save you time and energy. With just a few clicks, you can secure your seat and start counting down to your journey.</li>
    <li><strong>Transparent Pricing:</strong> We believe in transparency. Our pricing is straightforward, with no hidden fees or surprises. What you see is what you pay.</li>
    <li><strong>Travel Expertise:</strong> Our team of travel enthusiasts and experts is here to provide you with guidance, advice, and tips to ensure your trip goes off without a hitch. Whether you need information about travel restrictions, baggage policies, or the best local spots to explore, we've got you covered.</li>
    <li><strong>24/7 Support:</strong> Your comfort and peace of mind matter to us. Our customer support is available around the clock to assist you with any inquiries, changes, or concerns you might have.</li>
    <li><strong>Secure Transactions:</strong> We prioritize the security of your personal and payment information. Our robust encryption ensures that your data remains confidential and protected.</li>
    <li><strong>Inspiration Hub:</strong> Not sure where to go next? Explore our Inspiration Hub, where you can find travel guides, destination highlights, and insider tips to spark your wanderlust.</li>
</ol>

<p>Whether you're embarking on a solo adventure, planning a family reunion, or jetting off for business, Your Flight Booking Website Name is here to make your travel dreams take flight. Join us in discovering the world, one journey at a time.</p>

<p class="soarP">Your journey begins here. Book your flight today and let's soar together!</p>

<p class="soarP">Safe travels,<br><em>AREMAR AIRLINES</em></p>

  </div>
</div>


<script>
  $(document).ready(function(){
  $('.input-group input').focus(function(){
    me = $(this) ;
    $("label[for='"+me.attr('id')+"']").addClass("animate-label");
  }) ;
  $('.input-group input').blur(function(){
    me = $(this) ;
    if ( me.val() == ""){
      $("label[for='"+me.attr('id')+"']").removeClass("animate-label");
    }
  }) ;
  // $('#test-form').submit(function(e){
  //   e.preventDefault() ;
  //   alert("Thank you") ;
  // })
});
</script>
</main>
<?php subview('footer.php'); ?> 