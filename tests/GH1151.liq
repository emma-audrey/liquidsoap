%include "test.liq"

if get_process_lines('echo "aa\rbb\ncc\r\ndd\r\r\nee"') !=
   ["aa\rbb", "cc", "dd\r", "ee"] then
  test.fail()
else
  test.pass()
end

output.dummy(blank())
