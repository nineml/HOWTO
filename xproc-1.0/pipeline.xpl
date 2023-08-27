<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" version="1.0"
                xmlns:c="http://www.w3.org/ns/xproc-step"
                xmlns:cx="http://xmlcalabash.com/ns/extensions"
                exclude-inline-prefixes="cx"
                name="main">
<p:output port="result"/>
<p:input port="parameters" kind="parameter"/>
<p:serialization port="result" indent="true"/>

<p:import href="http://xmlcalabash.com/extension/steps/invisible-xml.xpl"/>

<cx:invisible-xml>
  <p:input port="grammar">
    <p:inline>
      <doc>
date: s?, day, -s, month, (-s, year)? .
-s: -" "+ .
day: digit, digit? .
-digit: "0"; "1"; "2"; "3"; "4"; "5"; "6"; "7"; "8"; "9".
month: "January"; "February"; "March"; "April";
       "May"; "June"; "July"; "August";
       "September"; "October"; "November"; "December".
year: (digit, digit)?, digit, digit .
      </doc>
    </p:inline>
  </p:input>
  <p:input port="source">
    <p:inline><doc>15 February 2022</doc></p:inline>
  </p:input>
</cx:invisible-xml>

</p:declare-step>
