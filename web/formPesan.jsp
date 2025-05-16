<%@ page import="java.util.*, model.Film" %>
<%
    ArrayList<Film> daftarFilm = (ArrayList<Film>) session.getAttribute("daftarFilm");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Form Pemesanan Tiket</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #fce3ec, #ffe8d6);
            font-family: 'Segoe UI', sans-serif;
        }
        .form-card {
            background-color: white;
            border-radius: 16px;
            box-shadow: 0 8px 24px rgba(0,0,0,0.1);
            padding: 30px;
        }
        .anime-illustration {
            max-width: 100%;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        }
        .form-label {
            font-weight: 600;
        }
    </style>
</head>
<body class="container py-5">
    <h2 class="text-center mb-5 fw-bold">?Form Pemesanan Tiket Anime Movie</h2>

    <div class="row g-5">
        <div class="col-md-6">
            <div class="form-card">
                <form action="struk.jsp" method="post">
                    <div class="mb-3">
                        <label class="form-label">Nama Pemesan</label>
                        <input type="text" name="nama" class="form-control" placeholder="Masukkan nama kamu" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Jumlah Tiket</label>
                        <input type="number" name="jumlah" min="1" class="form-control" placeholder="Contoh: 2" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Pilih Film</label>
                        <select name="film" class="form-select" required>
                            <% for (Film f : daftarFilm) { %>
                                <option value="<%= f.getJudul() %>"><%= f.getJudul() %></option>
                            <% } %>
                        </select>
                    </div>

                    <div class="mb-4">
                        <label class="form-label">Pilih Jam Tayang</label>
                        <select name="jam" class="form-select" required>
                            <option value="">-- Pilih Jam --</option>
                            <option>09:00</option>
                            <option>10:30</option>
                            <option>12:00</option>
                            <option>13:30</option>
                            <option>15:00</option>
                            <option>16:30</option>
                            <option>18:00</option>
                        </select>
                    </div>

                    <button type="submit" class="btn btn-danger w-100 py-2 fw-bold">Pesan Tiket Sekarang</button>
                </form>
            </div>
        </div>

        <div class="col-md-6 d-flex align-items-center justify-content-center">
            <img src="images/form_illustration.jpg" class="anime-illustration" alt="Ilustrasi Anime Tiket">
        </div>
    </div>
</body>
</html>
