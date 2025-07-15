
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



for ((i=1; i<=jumlah_item; i++)); do
echo
echo "Item ke-$i: "
echo -n "Pilih menu (1-5): "
read nomor
echo -n "Jumlah porsi: "
read porsi

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
 
total=$((total + subtotal))
done

echo
echo "Total belanja: Rp$total"

echo "Masukan jumlah uang:"
read bayar

if [ $bayar -ge $total ]; then
kembali=$((bayar - total))
echo "Kembalian: Rp$kembali"
 
echo
echo -e "Terima kasih telah berbelanja!"
else
 
echo
echo -e "Uang tiak cukup!"
fi


