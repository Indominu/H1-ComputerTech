$(document).ready(function() {
    var movieTitles
    var backgroundUrl = "https://api.nasa.gov/planetary/apod?api_key=XgRa3Ij8ViIdAfcMcmhw7bmIoDV2LwZb7FrVeKST"

    AjaxCall(backgroundUrl, NasaApi) // Gets all data from nasa api through Ajax & send it to the next function
    AjaxCall('../Php/GetClientIpAdd.php', GetClientIpAdd) // Gets client ip-address from php file through Ajax & send it to the next function
    AjaxCall('../Php/GetMovieTitles.php', GetMovieTitles) // Gets all movie titles in the database through Ajax, php & send it to the next function

    // Toggles video between hide & show if it meant to hide then it pause the video
    $("#watch").click(function() {
        $("video").toggle()
        $("video")[0].pause()
    })

    // Searches for the users chosen movie & make all html with the tag "a" visible including "watch & Download"
    $("input").on('select keypress', function(event) {
        if (event.keyCode == 13 || event.type == "select") {
            for (var i = 0; i < movieTitles.length; i+=1) {
                if (movieTitles[i].toLowerCase() == $(this).val().toLowerCase()) {
                    AjaxCall('../Php/GetMoviePath.php?moviePath=' +  movieTitles[i], GetMoviePath)
                    $("#download").attr("download", movieTitles[i])
                    $(this).val("")
                    $("a").show()
                    break
                }
            }          
        }
    })

    // Displays image & title from nasa api
    function NasaApi(xmlhttp) {
        var data = JSON.parse(xmlhttp.response)
        $("img").attr("src", data.url)
        $("marquee").text("Picture of day: " + data.title)
    }

    // Displays the ip-address & copyrights symbol including what year it was made to current year
    function GetClientIpAdd(xmlhttp) {
        $("label").html( "Your ip address: " + xmlhttp.responseText + " &copy; 2018-" + new Date().getFullYear())
    }

    // Displays the movie titles from database as options in datalist
    function GetMovieTitles(xmlhttp) {
        movieTitles = JSON.parse(xmlhttp.responseText)
        for (var i = 0; i < movieTitles.length; i+=1) {
            $('datalist').append("<option value = '" + movieTitles[i] + "' >")
        }
    }

    // Atachess chosen movie path to video & download
    function GetMoviePath(xmlhttp) {
        $("video").attr("src", xmlhttp.responseText)
        $("#download").attr("href", xmlhttp.responseText)          
    }

    function AjaxCall(url, NextFunction) {
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest()
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP")
        }
        xmlhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
            NextFunction(this);
          }
        }
        xmlhttp.open("GET", url, true)
        xmlhttp.send()
      }
})