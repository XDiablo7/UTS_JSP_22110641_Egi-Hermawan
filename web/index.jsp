<%@ page import="java.util.*, model.Film" %>
<%
ArrayList<Film> daftarFilm = new ArrayList<>();
daftarFilm.add(new Film("Sword Art Online: Progressive ? Aria of a Starless Night", "Isekai, Sci-Fi", 97, 55000, new String[]{"11:00", "14:30", "18:00"}, "sao_progressive.jpg"));
daftarFilm.add(new Film("Naruto The Movie 2: Legend of the Stone of Gelel", "Action, Fantasy", 96, 45000, new String[]{"09:30", "12:30", "16:00"}, "naruto_gelel.jpg"));
daftarFilm.add(new Film("Your Name", "Drama, Supernatural", 112, 60000, new String[]{"10:15", "13:45", "17:15"}, "yourname.jpg"));
daftarFilm.add(new Film("Tamako Love Story", "Romance, Slice of Life", 83, 40000, new String[]{"09:00", "11:30", "14:00"}, "tamako.jpg"));
daftarFilm.add(new Film("I Want to Eat Your Pancreas", "Drama, Romance", 108, 60000, new String[]{"10:45", "14:15", "17:45"}, "pancreas.jpg"));
daftarFilm.add(new Film("Konosuba! Movie: Legend of Crimson", "Comedy, Fantasy", 90, 50000, new String[]{"11:30", "15:00", "18:30"}, "konosuba_movie.jpg"));
session.setAttribute("daftarFilm", daftarFilm);
%>


<!DOCTYPE html>
<html>
<head>
    <title>Bioskop Anime</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f7f7f7;
        }
        .anime-card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .anime-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        }
        .poster-img {
            height: 200px;
            object-fit: cover;
            border-radius: 10px;
        }
    </style>
</head>
<body class="container py-5">
    <h1 class="text-center mb-5 fw-bold">Daftar Anime Tayang Hari Ini</h1>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
        <%
            for (Film f : daftarFilm) {
        %>
        <div class="col">
            <div class="card h-100 anime-card">
                <img src="images/<%= f.getPosterFile() %>" class="card-img-top poster-img" alt="<%= f.getJudul() %>" onerror="this.onerror=null;this.src='images/default.jpg';">
                <div class="card-body">
                    <h5 class="card-title fw-bold"><%= f.getJudul() %></h5>
                    <p class="card-text"><b>Genre:</b> <%= f.getGenre() %><br>
                   <b>Durasi:</b> <%= f.getDurasi() %> menit<br>
                    <b>Harga Tiket:</b> Rp <%= f.getHarga() %><br>
                    <b>Jam Tayang:</b> <%= String.join(", ", f.getJamTayang()) %></p>
                </div>
            </div>
        </div>
        <% } %>
    </div>

    <div class="text-center mt-5">
        <a href="formPesan.jsp" class="btn btn-danger btn-lg px-5 py-2 shadow-sm">Pesan Tiket Sekarang!</a>
    </div>
</body>
</html>
