<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TayThien_API.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tây Thiên API</title>
			<img src="https://cdn.iconscout.com/icon/free/png-256/youtube-104-432560.png" alt="" class="logo">
	<style>
		@mixin font-base {
			padding: 0;
			margin: 0;
			line-height: 1.3;
			font-weight: 600;
		}

		h4 {
			@include font-base;
		}

		p {
			@include font-base;
			color: grey;
			font-size: 0.7rem;
		}

		body {
			background-color: #eee;
		}

		.vidContainer {
			width: 560px;
			background-color: #fff;
			margin: 0 auto;
		}

		header,
		section {
			position: fixed;
			text-align: center;
			width: 560px;
			background-color: #fff;
		}

		section {
			top: 50px;
		}

		.logo {
			width: 120px;
			padding: 10px;
		}

		main {
			padding: 370px 18px 10px;
		}

		article {
			display: flex;
			align-items: center;
			padding: 8px 12px;
			border: 2px solid white;
			border-radius: 8px;
			margin: 0 auto;
			&:hover {
				border: 2px solid #ff9999;
			}
		}

		.thumb {
			height: 70px;
			border-radius: 4px;
		}

		.details {
			padding: 8px 22px;
		}

		#search{
			width: 800px;
			height: 25px;
			font-size: 20px;
			vertical-align:middle;
			padding: 10px;
		}

		.form-group{
			margin-left: 200px;
			margin-top: 10px;
		}

		search:after {
				content:"\f002";
			}
		search:hover:after {
			-webkit-animation: none;
			-webkit-transform: scale(1.4);
			animation: none;
			transform: scale(1.4);
		}

	    .btn {
	        display: inline-block;
	        font-family: "Montserrat", "Trebuchet MS", Helvetica, sans-serif;
			font-size: 20px;
	        -webkit-font-smoothing: antialiased;
	        position: relative;
	        padding: 15px;
	        padding-right: 15px;
	        background: #ab0f0f;
	        border: none;
	        color: white;
	        transition: .2s;
	    }
		.btn::after{
			position: absolute;
			top: 0;
			bottom: 0;
			right: 0;
			padding-top: inherit;
			padding-bottom: inherit;
			width: 50px;
			content: "\00a0";
			font-family: 'FontAwesome', sans-serif;
			font-size: 20px;
			text-align: center;
		
			transition: .2s;
			transform-origin: 50% 60%;
		}
		.btn:hover
	    {
	        background-color: #ed0909;
	        opacity: 0.6;
	    }
		.btn:active {

		}
		.btn:focus {
				background-color: #ed0909;
				outline: none;
		}

		#videos{
			align-content:center;
		}
}

	</style>
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.8.10/themes/smoothness/jquery-ui.css" type="text/css"/>
	<!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
	-->
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
			<!--<section id="video">
				<iframe width="560" height="315" src="https://www.youtube.com/embed/9sWEecNUW-o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</section>-->

			<form id="form">

				<div class="form-group">
					<input type="text" class="form-control" id="search">
				</div>
				<div class="form-group">
					<button type="submit" class="btn search" id="submitBtn"><i class="fa fa-youtube">Search</i></button>
				</div>
			</form>

			<div class="row">
				<div class="col-md-12">
					<div id="videos">

					</div>
				</div>
			</div>
        </div>
    </form>
</body>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<script>
		$(document).ready(function () {
            var API_Key = "AIzaSyC2961is5Sjt3Vpd3VLOuO7YWZuNnC_HNo"
			var video = ''
			$("#submitBtn").click(function (event) {


				event.preventDefault()	
				//alert("form")

				var search = $("#search").val()

				//validateField()
				//alert(search)
				if (validateField()) {
                    $("#videos").empty()
					videoSearch(API_Key, search, 10)
				}
			});

			function videoSearch(key, search, maxResults) {
				$.get("https://www.googleapis.com/youtube/v3/search?key=" + key + "&type=video&part=snippet&maxResults=" + maxResults + "&q=" + search, function (data) {
					console.log(data)

					data.items.forEach(item => {
						video = `
						<iframe width="640px" height="480px" src="https://www.youtube.com/embed/${item.id.videoId}" frameborder="10" allowfullscreen></iframe>
						`
						$("#videos").append(video)
					});
				});
			}

            function validateField() {
                var x = document.forms["form1"]["search"].value;
                if (x == "" || x == " ") {
                    alert("Không được bỏ trống khung tìm kiếm!!!");
                    return false;
				}
				return true;
            }
		});
        
    </script>
</html>























