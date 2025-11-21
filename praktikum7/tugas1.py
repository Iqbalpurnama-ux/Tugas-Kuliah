jumlah_baris = int(input("masukan baris matriks : "))
jumlah_kolom = int(input("masukan kolom matriks : "))
matriks = []
for i in range (jumlah_baris):
    baris_matriks = []
    for n in range (jumlah_kolom):
        jumlah = int(input(f"inputkan nilai matriks pada baris ke - {i+1}, kolom ke - {n+1} : "))
        baris_matriks.append(jumlah)
    matriks.append(baris_matriks)

print("\nMatriks Sebelum Transposisi : ")
for l in matriks:
    print(l)

transpose = []
for n in range (jumlah_kolom):
    baris_baru = []
    for i in range(jumlah_baris):
        baris_baru.append(matriks[i][n])
    transpose.append(baris_baru)

print("\nMatriks Setelah Transposisi :")
for a in transpose:
    print(a)