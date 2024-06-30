diskpart

list disk

select disk 1

clean 

create partition primary

select partition 1

active

format FS=NTFS label=USB-DRIVE quick
