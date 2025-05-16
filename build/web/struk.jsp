<%@ page import="java.util.*, model.Film" %>
<%
    // Ambil daftar film dari session
    ArrayList<Film> daftarFilm = (ArrayList<Film>) session.getAttribute("daftarFilm");

    // Ambil data dari request form
    String nama = request.getParameter("nama");
    String filmDipilih = request.getParameter("film");
    String jam = request.getParameter("jam");
    int jumlah = Integer.parseInt(request.getParameter("jumlah"));

    // Cari film yang dipilih untuk ambil harga
    int hargaTiket = 0;
    for (Film f : daftarFilm) {
        if (f.getJudul().equals(filmDipilih)) {
            hargaTiket = f.getHarga();
            break;
        }
    }

    int total = jumlah * hargaTiket;
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Struk Pemesanan</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

    <div class="container mt-5">
        <div class="card mx-auto shadow-sm" style="max-width: 600px;">
            <div class="card-body">
                <h3 class="text-center mb-4">Struk Pemesanan Tiket</h3>

                <table class="table">
                    <tr>
                        <th>Nama Pemesan</th>
                        <td><%= nama %></td>
                    </tr>
                    <tr>
                        <th>Film yang Dipilih</th>
                        <td><%= filmDipilih %></td>
                    </tr>
                    <tr>
                        <th>Jam Tayang</th>
                        <td><%= jam %></td>
                    </tr>
                    <tr>
                        <th>Jumlah Tiket</th>
                        <td><%= jumlah %></td>
                    </tr>
                    <tr>
                        <th>Harga per Tiket</th>
                        <td>Rp <%= hargaTiket %></td>
                    </tr>
                    <tr>
                        <th>Total Bayar</th>
                        <td><strong>Rp <%= total %></strong></td>
                    </tr>
                </table>

                <div class="text-center mt-4">
                    <a href="index.jsp" class="btn btn-secondary">Kembali ke Beranda</a>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
