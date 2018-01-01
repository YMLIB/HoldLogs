select
  COUNT(bib_record_id),
  bib_record_id,
  bv.title,
  bv.record_num
from
  sierra_view.bib_record_item_record_link as bi,
  sierra_view.hold as hold,
  sierra_view.bib_view as bv
where record_id = item_record_id
  and bi.bib_record_id = bv.id
group by bib_record_id,bv.title,bv.record_num
order by COUNT(bib_record_id) desc;
