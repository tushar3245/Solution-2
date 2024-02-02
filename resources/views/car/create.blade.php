<!DOCTYPE html>
<html>
<head>
    <title>Car Information Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            // Function to toggle input fields
            function toggleInputFields() {
                var carType = $("#carType").val();
                if (carType == "Electric") {
                    $("#batteryCapacityField").show();
                    $("#fuelEfficiencyField").hide();
                } else {
                    $("#batteryCapacityField").hide();
                    $("#fuelEfficiencyField").show();
                }
            }

            // Event listener for car type selection change
            $("#carType").change(function() {
                toggleInputFields();
            });

            // Initialize the form with the correct fields
            toggleInputFields();
        });
    </script>
</head>
<body>

<div class="container mt-5">
    <h2>Enter Car Information</h2>
    <form action="{{ route('cars-store') }}" method="post">
        @csrf

        <div class="form-group">
            <label for="carType">Car Type (Electric/Gas):</label>
            <select class="form-control" name="carType" id="carType">
                <option value="Electric">Electric</option>
                <option value="Gas">Gas</option>
            </select>
        </div>

        <div class="form-group" id="batteryCapacityField" style="display:none;">
            <label for="batteryCapacity">Enter Battery Capacity (kWh):</label>
            <input type="number" class="form-control" id="batteryCapacity" name="batteryCapacity">
        </div>

        <div class="form-group" id="fuelEfficiencyField" style="display:none;">
            <label for="fuelEfficiency">Enter Fuel Efficiency (MPG):</label>
            <input type="number" class="form-control" id="fuelEfficiency" name="fuelEfficiency">
        </div>

        <div class="form-group">
            <label for="name">Enter Name:</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>

        <div class="form-group">
            <label for="model">Enter Model:</label>
            <input type="text" class="form-control" id="model" name="model" required>
        </div>

        <div class="form-group">
            <label for="year">Enter Year:</label>
            <input type="number" class="form-control" id="year" name="year" required>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
       <a href="{{route('cars-store')}}"> <button type="button" class="btn btn-success">Show All Cars</button></a>
    </form>
</div>

</body>
</html>
