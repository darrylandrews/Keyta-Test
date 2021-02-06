<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/design.css') }}">
    <title>Clothes Detail</title>
  </head>

  <body class="grad">
    <div class="container">
      <div class="row mt-3">
          <div class="col col-lg-2 col-md-4 col-sm-4 text-right">
              <img src="{{URL::asset('logo2.png')}}" style="width: 180px; height: 180px;">
          </div>

          <div class="col col-lg-4 col-md-8 col-sm-8 text-left align-self-center">
              <h4 class="font-weight-bold"><a href="/" id="homeB">Toko Sejahtera</a></h4>
              <p class>JL Benua Timur, Pondok Indah, Cilandak<br>Jakarta Selatan, 112410</p>
          </div>

          <div class="col col-lg-6 col-md-0 col-sm-0"></div>
      </div>

      <div class="row mt-4">
            <div class="col col-lg-6 text-center">
              <img src="{{ asset($clothes->image) }}" class="image">
            </div>

            <div class="col col-lg-6">
              <div class="row mb-2">
                <h3>{{$clothes->name}}</h3>
              </div>
              
              <div class="row">
                <p>{{$clothes->description}}</p>
                
              </div>

              <div class="row">
                <form method = "POST" action = "{{ url('clothe/'.$clothes->id) }}" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  
                  <button type="button" onclick="decrement()" class="numberC">-</button>
                    <input id=qty name="quantity" type=number min=0 max="{{$clothes->stock}}" placeholder="0">
                  <button type="button" onclick="increment()" class="numberC">+</button>
                  <br>
                  <button type="submit" value="submit" class="btn btn-primary text-center">Tambah ke keranjang</button>
                </form>
              </div>
            </div>
          </div>
    </div>

    <script>
      function increment() 
      {
          document.getElementById('qty').stepUp();
      }
      function decrement() 
      {
          document.getElementById('qty').stepDown();
      }
    </script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>

  <footer class="bg-light">
    
    <hr class="mt-4" style="height: 2px;">

    <div class="container">
        <div class="row">
            <div class="col col-lg-2 align-self-center mb-2">
                <h5>Total Harga</h5>
                <h4>Rp. {{$gt}}</h4>
            </div>

            <div class="col col-lg-8 mb-2"></div>

            <div class="col col-lg-2 align-self-center mb-2">
              @if($gt > 0)
                <a href="/checkout" class="btn btn-md btn-block text-dark font-weight-bold" id="beli">Checkout</a>
              @else
              @endif 
            </div>
        </div>
    </div>
   
  </footer>
</html>