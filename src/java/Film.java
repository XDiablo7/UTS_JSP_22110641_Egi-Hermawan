package model;

public class Film {
    private String judul;
    private String genre;
    private int durasi;
    private int harga;
    private String[] jamTayang;
    private String posterFile; // ini tambahan

    public Film(String judul, String genre, int durasi, int harga, String[] jamTayang, String posterFile) {
        this.judul = judul;
        this.genre = genre;
        this.durasi = durasi;
        this.harga = harga;
        this.jamTayang = jamTayang;
        this.posterFile = posterFile;
    }

    // Getter
    public String getJudul() { return judul; }
    public String getGenre() { return genre; }
    public int getDurasi() { return durasi; }
    public int getHarga() { return harga; }
    public String[] getJamTayang() { return jamTayang; }
    public String getPosterFile() { return posterFile; }
}
