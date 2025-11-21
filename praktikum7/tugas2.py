# memasukan baris dan kolom matriks
jumlah_baris = int(input("masukan baris matriks : "))
jumlah_kolom = int(input("masukan kolom matriks : "))

# menginputkan matriks pertama
print("\nInput Matriks pertama")
matriks1 = []
for i in range (jumlah_baris):
    baris_matriks = []
    for n in range (jumlah_kolom):
        jumlah = int(input(f"inputkan nilai matriks pada baris ke - {i+1}, kolom ke - {n+1} : "))
        baris_matriks.append(jumlah)
    matriks1.append(baris_matriks)

# menginputkan matriks pertama
print("\nInput Matriks Kedua")
matriks2 = []
for i in range(jumlah_baris):
    baris_matriks = []
    for a in range(jumlah_kolom):
        nilai = int(input(f"Inputkan nilai matriks2 pada baris ke - {i+1}, kolom ke - {a+1}: "))
        baris_matriks.append(nilai)
    matriks2.append(baris_matriks)

# Melakukan penjumlahan matriks
hasil_jumlah = []
for i in range(jumlah_baris):
    baris_hasil = []
    for j in range(jumlah_kolom):
        baris_hasil.append(matriks1[i][j] + matriks2[i][j])
    hasil_jumlah.append(baris_hasil)

# Menampilkan hasil
print("\n penjumalahan matriks 1 dan matriks 2")
print("\nMatriks Pertama:")
for baris in matriks1:
    print(baris)

print("\nMatriks Kedua:")
for baris in matriks2:
    print(baris)

print("\nHasil Penjumlahan Matriks:")
for baris in hasil_jumlah:
    print(baris)