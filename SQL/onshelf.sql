select bv.title,bv.record_num,placed_gmt,pickup_location_co
de,irp.call_number,irp.call_number_norm,irp.barcode from sierra_view.bib_view as
 bv,sierra_view.hold as hold, sierra_view.bib_record_item_record_link as bi, sie
rra_view.item_record_property as irp where hold.status = 'i' and hold.record_id 
= bi.item_record_id and bv.id = bi.bib_record_id and hold.record_id = irp.item_r
ecord_id order by call_number_norm asc;
