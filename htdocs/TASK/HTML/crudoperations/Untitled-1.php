<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>CRUD_OPERATION_INDEX</title>
  </head>
  <body>
    
   <div class="container">
   <button class="btn-primary mt-5"><a href="CRUD.html" class="text-light">Add User</button></a>
   <table class="table">
  <thead>
    <tr>
      <th scope="col">SL No</th>
      <th scope="col">FirstName</th>
      <th scope="col">LastName</th>
      <th scope="col">Gender</th>
      <th scope="col">Email ID</th>
      <th scope="col">Mobile No</th>
      <th scope="col">Operations</th>
    </tr>
  </thead>
  <tbody>
      <?php
      $conn = mysqli_connect('localhost', 'root', '','crud_operation');
       
      if(! $conn )  
      {  
        die('Could not connect: ' . mysqli_error());  
      }  

      if(isset($_GET["page"]))
        {
        $page=$_GET["page"];
        }
        else
        {
        $page=1;

        }

      $num_per_page=5;
      $start_from=($page-1)*5;
      $sql="select * from crud limit $start_from,$num_per_page" ;
      $result= mysqli_query($conn,$sql);
      

      if ($result) 
      {
          while ($row=mysqli_fetch_assoc($result))
           {
            $id=$row['id'];
            $firstname=$row['firstname'];
            $lastname=$row['lastname'];
            $gender=$row['gender'];
            $email=$row['email'];
            $mobile=$row['mobile'];
            echo '<tr>
            <th scope="row">'.$id.'</th>
            <td>'.$firstname.'</td>
            <td>'.$lastname.'</td>
            <td>'.$gender.'</td>
            <td>'.$email.'</td>
            <td>'.$mobile.'</td>
            <td>
            <button class="btn-primary"><a href="update.php? updateid='.$id.'" class="text-light">Update</a></button>
            <button class="btn-danger"><a href="delete.php? deleteid='.$id.'" class="text-light">Delete</a></button>
            </td>
          </tr>';
          }
      }

   

 

$sql="select * from crud limit $start_from,$num_per_page";

$result=mysqli_query($conn,$sql);
$sql="select * from crud";
$result=mysqli_query($conn,$sql);
$total_records=mysqli_num_rows($result);
$total_pages=ceil($total_records/$num_per_page);

for($i=1;$i<=$total_pages;$i++)
{
    if($page==$i)
    {
        echo "<a class='link active 'href='Untitled-1.php?page=".$i."'>".$i."</a>";
    }
    else{
        echo "<a class='link 'href='Untitled-1.php?page=".$i."'>".$i."</a>";
    }
    
}

      ?>
  
  </tbody>
</table>
   </div>
  
  </body>
</html>
