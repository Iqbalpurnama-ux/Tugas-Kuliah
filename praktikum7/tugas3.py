inventaris = []

while True:
    print("\nMenu :")
    print("1. Tambah Barang")
    print("2. Hapus Barang")
    print("3. Tampilkan Inventaris")
    print("4. Keluar")

    pilihan = input("Pilih menu (1-4): ").strip()

    if pilihan == '1':
        nama = input("Masukkan nama barang: ").strip()
        if nama:
                harga = float(input("Masukkan harga per unit (Rp): "))
                barang = {'nama': nama, 'harga': harga}
                inventaris.append(barang)
        else:
            print("Nama barang tidak boleh kosong!")

    elif pilihan == '2':
        if inventaris:
            nama = input("Masukkan nama barang yang ingin dihapus: ").strip()
            ditemukan = False
            for i in range(len(inventaris) - 1, -1, -1):
                if inventaris[i]['nama'].lower() == nama.lower():
                    inventaris.pop(i)
                    print(f"Barang '{nama}' berhasil dihapus dari inventaris.")
                    ditemukan = True
                    break
            if not ditemukan:
                print(f"Barang '{nama}' tidak ditemukan dalam inventaris.")
        else:
            print("Inventaris kosong. Tidak ada barang untuk dihapus.")

    elif pilihan == '3':
        if inventaris:
            print("\n=== DAFTAR SEMUA INVENTARIS ===")
            for idx, barang in enumerate(inventaris, 1):
                nama_barang = barang.get('nama', 'Tidak ada nama')
                harga = barang.get('harga', 0)
                stok = barang.get('stok', 0)
                print(f"{idx:<4} Nama: {nama_barang} | Harga: {harga}")
            print(f"Total Barang: {len(inventaris)}")
        else:
            print("Inventaris kosong.")

    elif pilihan == '4':
        print("Terima kasih telah menggunakan aplikasi.")
        break

    else:
        print("Pilihan tidak valid. Silakan pilih 1-4.")