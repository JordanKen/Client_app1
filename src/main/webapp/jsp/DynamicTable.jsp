<!DOCTYPE html>
<html lang="en-us">
<head>
  <title>DataTables User</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.1.1/css/all.min.css"/>

  <style>
    .container {
      padding: 2rem 0rem;
    }

    h4 {
      margin: 2rem 0rem 1rem;
    }

    .table-image tbody>td, th { vertical-align: middle; }
  </style>
</head>
<body>

<div class="container">
  <div class="row">
    <div class="col-12">
      <table class="table table-bordered">
        <thead>
        <tr>
          <th scope="col">CustomerName</th>
          <th scope="col">ContactLastName</th>
          <th scope="col">ContactFirstName</th>
          <th scope="col">Phone</th>
          <th scope="col">AddressLine1</th>
          <th scope="col">AddressLine2</th>
          <th scope="col">City</th>
          <th scope="col">State</th>
          <th scope="col">CreditLimit</th>
          <th scope="col">Actions</th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <th scope="row">1</th>
          <td>Bootstrap 4 CDN and Starter Template</td>
          <td>Bootstrap 4 CDN and Starter Template</td>
          <td>Bootstrap 4 CDN and Starter Template</td>
          <td>Bootstrap 4 CDN and Starter Template</td>
          <td>Bootstrap 4 CDN and Starter Template</td>
          <td>Bootstrap 4 CDN and Starter Template</td>
          <td>Cristina</td>
          <td>2.846</td>
          <td>
            <button type="button" class="btn btn-primary"><i class="far fa-eye"></i></button>
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-edit"></i></button>
            <button type="button" class="btn btn-danger"><i class="far fa-trash-alt"></i></button>
          </td>
        </tr>
        <tr>
          <th scope="row">2</th>
          <td>Bootstrap Grid 4 Tutorial and Examples</td>
          <td>Cristina</td>
          <td>3.417</td>
          <td>
            <button type="button" class="btn btn-primary"><i class="far fa-eye"></i></button>
            <button type="button" class="btn btn-success"><i class="fas fa-edit"></i></button>
            <button type="button" class="btn btn-danger"><i class="far fa-trash-alt"></i></button>
          </td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td>Bootstrap Flexbox Tutorial and Examples</td>
          <td>Cristina</td>
          <td>1.234</td>
          <td>
            <button type="button" class="btn btn-primary"><i class="far fa-eye"></i></button>
            <button type="button" class="btn btn-success"><i class="fas fa-edit"></i></button>
            <button type="button" class="btn btn-danger"><i class="far fa-trash-alt"></i></button>
          </td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="champ1">CustomerName</label>
            <input type="email" class="form-control" id="champ1"  placeholder="Enter CustomerName">
          </div>
          <div class="form-group">
            <label for="champ2">ContactLastName</label>
            <input type="password" class="form-control" id="champ2" placeholder="enter ContactLastName">
          </div>
          <div class="form-group">
            <label for="champ3">ContactFirstName</label>
            <input type="password" class="form-control" id="champ3" placeholder="enter ContactFirstName">
          </div>
          <div class="form-group">
            <label for="champ4">Phone</label>
            <input type="password" class="form-control" id="champ4" placeholder="enter Phone">
          </div>
          <div class="form-group">
            <label for="champ5">AddressLine1</label>
            <input type="password" class="form-control" id="champ5" placeholder="enter AddressLine1">
          </div>
          <div class="form-group">
            <label for="champ6">AddressLine2</label>
            <input type="password" class="form-control" id="champ6" placeholder="enter AddressLine2">
          </div>
          <div class="form-group">
            <label for="champ7">City</label>
            <input type="password" class="form-control" id="champ7" placeholder="enter City">
          </div>
          <div class="form-group">
            <label for="champ8">State</label>
            <input type="password" class="form-control" id="champ8" placeholder="enter State">
          </div>
          <div class="form-group">
            <label for="champ9">CreditLimit</label>
            <input type="password" class="form-control" id="champ9" placeholder="enter CreditLimit">
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<script>
  $(document).ready(function() {

    var dataSet = [
      ["Tiger Nixon", "System Architect", "Edinburgh", "5421", "2011/04/25", "$320,800"],
      ["Garrett Winters", "Accountant", "Tokyo", "8422", "2011/07/25", "$170,750"],
      ["Ashton Cox", "Junior Technical Author", "San Francisco", "1562", "2009/01/12", "$86,000"],
      ["Cedric Kelly", "Senior Javascript Developer", "Edinburgh", "6224", "2012/03/29", "$433,060"],
      ["Airi Satou", "Accountant", "Tokyo", "5407", "2008/11/28", "$162,700"],
      ["Brielle Williamson", "Integration Specialist", "New York", "4804", "2012/12/02", "$372,000"],
      ["Herrod Chandler", "Sales Assistant", "San Francisco", "9608", "2012/08/06", "$137,500"],
      ["Rhona Davidson", "Integration Specialist", "Tokyo", "6200", "2010/10/14", "$327,900"],
      ["Colleen Hurst", "Javascript Developer", "San Francisco", "2360", "2009/09/15", "$205,500"],
      ["Sonya Frost", "Software Engineer", "Edinburgh", "1667", "2008/12/13", "$103,600"],
      ["Jena Gaines", "Office Manager", "London", "3814", "2008/12/19", "$90,560"],
      ["Quinn Flynn", "Support Lead", "Edinburgh", "9497", "2013/03/03", "$342,000"],
      ["Charde Marshall", "Regional Director", "San Francisco", "6741", "2008/10/16", "$470,600"],
      ["Haley Kennedy", "Senior Marketing Designer", "London", "3597", "2012/12/18", "$313,500"],
      ["Tatyana Fitzpatrick", "Regional Director", "London", "1965", "2010/03/17", "$385,750"],
      ["Michael Silva", "Marketing Designer", "London", "1581", "2012/11/27", "$198,500"]
    ];

    var columnDefs = [{
      title: "Name"
    }, {
      title: "Username"
    }, {
      title: "Password"
    }, {
      title: "Type."
    }, {
      title: "Start date"
    }, {
      title: "Status"
    }];

    var myTable;

    myTable = $('#example').DataTable({
      "sPaginationType": "full_numbers",
      data: dataSet,
      columns: columnDefs,
      dom: 'Bfrtip',        // Needs button container
      select: 'single',
      responsive: true,
      altEditor: true,     // Enable altEditor
      buttons: [{
        text: 'Add',
        name: 'add'        // do not change name
      },
        {
          extend: 'selected', // Bind to Selected row
          text: 'Edit',
          name: 'edit'        // do not change name
        },
        {
          extend: 'selected', // Bind to Selected row
          text: 'Delete',
          name: 'delete'      // do not change name
        }]

    });

  });
</script>

</body>
</html>