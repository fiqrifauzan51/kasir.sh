
#!/bin/bash
# Daftar menu dan harganya
menu0="Nasi Goreng"
menu1="Mie Ayam"
menu2="Sate Ayam"
menu3="Teh Manis"
menu4="Es Jeruk"

harga0=15000
harga1=12000
harga2=18000
harga3=5000
harga4=6000
# disini saya menyimpan dulu menu dan harganya berapa berapanya satu satunya di list sesudah itu  

echo 
echo "=== MENU WARUNG MAKAN HJ FIQRI==="
echo "1. $menu0 	- Rp$harga0"
echo "2. $menu1 	- Rp$harga1"
echo "3. $menu2 	- Rp$harga2"
echo "4. $menu3 	- Rp$harga3"
echo "5. $menu4 	- Rp$harga4"
# dan ini saya untuk menampilkan output daftar menunya dan harganya kan kalo diatas mah itu datanya dan disini mah hasilmenampilkan datanya seperti yang tugas kasih bapa basa eta


echo
echo -n "Berapa item yang ingin kamu beli? "
read jumlah_item
total=0
# nah echo ini untuk menampilkan berapa item yang anda beli terus -n itu teh untuk tidak nambah baris baru ke bawah jadi langsung saja we ke pinggir
# dan itu total 0 tuh buat menyimpan total belanja akhirnya begitu
#dan read itu teh untuk meminta apa yang kita beli itu


for ((i=1; i<=jumlah_item; i++)); do
echo
echo "Item ke-$i: "
echo -n "Pilih menu (1-5): "
read nomor
echo -n "Jumlah porsi: "
read porsi
# for itu untuk perulangan sebanyak yag sesuai jumlah item tersebut
#dan tiap sudah maka maka harus mengisi pilih menu dan jumlah porsi
 
if [ "$nomor"  -eq 1 ]; then
subtotal=$((harga0 * porsi))
 
elif [ "$nomor" -eq 2 ]; then
subtotal=$((harga1 * porsi))
 
elif [ "$nomor" -eq 3 ]; then
subtotal=$((harga2 * porsi))
 
elif [ "$nomor" -eq 4 ]; then
subtotal=$((harga3 * porsi))
 
elif [ "$nomor" -eq 5 ]; then
subtotal=$((harga4 * porsi))
else
 
echo "Menu tidak tersedia"
subtotal=0
fi
# dan ini itu saya memakai if else elif buat percabngan nya harga dan subtotal itu kan itu saya di kasih nomor jadi kan jika manggil noomor satu yang muncul akan yang pake dolar,jadi jika saya manggil nomor yang tidak ada di percabangan ini maka tidak akan muncul hasilnya bakal menu tidak tersedia,kan dari awalnya jugakalo di atas daftar menu na ada 5 maka yang di tampilkan di if elsenya juga tidak boleh lebih dari 5
# dan itu teh nomor yang benar/valid kan (1-5) dan ini tuh menghitung subtotal harga x porsi dan itu -eq tuh kaya sama dengan ya 
 

total=$((total + subtotal))
 # dan ini tuh menambahkan subtotalnya,untuk total belanja ditambah dengan subtotal dari yang irtem saat ini,dan dikerjakanya setiap 1 item selesai

done
#ini tuh akhir dari perulangan for

echo
echo "Total belanja: Rp$total"
#dan ini itu untuk mengnampilkan hasil dari totsl belanja dan untuk si pembeli ngasih uang berapa 
echo "Masukan jumlah uang:"
read bayar

if [ $bayar -ge $total ]; then
kembali=$((bayar - total))
echo "Kembalian: Rp$kembali"
 
echo
echo -e "----Terima kasih telah berbelanja!----"
else
 
echo
echo -e "----Uang tiak cukup!----"
fi
# nah kan in teh uang yang di bayarnya apakah adaa kembalian atau pas kalu itu akan ada jawaban terimakasih telah belanja jika uang tidak cukup maka akan ada uang tidak cukup  nah kan -ge teh jadi sama dengan atau lebih besar 

