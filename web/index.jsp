<%--
  Created by IntelliJ IDEA.
  User: tangulo
  Date: 15-06-2015
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


  <title>Nisum Test</title>

  <script language="javascript">

    function init(){
      var max = 1;
      var min = 10;

      var a = Math.floor(Math.random() * (max - min + 1)) + min;
      var b = Math.floor(Math.random() * (max - min + 1)) + min;

      document.getElementById("fieldA").innerHTML = a;
      document.getElementById("fieldB").innerHTML = b;
      document.getElementById("fieldC").innerHTML = a;

      var options = ['1','2','3','4'];
      shuffle(options);



      document.getElementById("answer" + options[0]).innerHTML = b + "</br>" + "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" + (a+a);
      document.getElementById("radio" + options[0]).value = 'correct';

      document.getElementById("answer" + options[1]).innerHTML = a + "</br>" + "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" + (a +a);

      document.getElementById("answer" + options[2]).innerHTML = a + "</br>" + "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" + (a+ b);

      document.getElementById("answer" + options[3]).innerHTML= b + "</br>" + "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" + a;

  }

    function shuffle(o){
      for(var j, x, i = o.length; i; j = Math.floor(Math.random() * i), x = o[--i], o[i] = o[j], o[j] = x);
      return o;
    }

    function checkAnswer(){
      if(getCheckedRadioValue('answers') == 'correct'){
        window.location = "correct.jsp";
      }else{
        alert("No");
      };

    }

    function getCheckedRadioValue(name) {
      var elements = document.getElementsByName(name);

      for (var i=0, len=elements.length; i<len; ++i)
        if (elements[i].checked) return elements[i].value;
    }

  </script>
</head>
<body onload="init()">

<p>
  public class Test {</br>
  <a style="margin-left: 20px;">int count =</a> <a id="fieldA"></a>;</br>
  <a style="margin-left: 20px;">public void function() {</a></br>
  <a style="margin-left: 40px;">if(true){</a></br>
  <a style="margin-left: 60px;">int count = <a id="fieldB"></a>;</a></br>
  <a style="margin-left: 60px;">System.out.println(count);</a></br>
  <a style="margin-left: 40px;">}</a></br>
  <a style="margin-left: 40px;">count = count + </a><a id="fieldC"></a></br>
  <a style="margin-left: 40px;">System.out.println(count);</a></br>
  <a style="margin-left: 20px;">}</a></br>


  <a style="margin-left: 20px;">public static void main(String[] args){</a></br>
  <a style="margin-left: 40px;">Test t = new Test();</a></br>
  <a style="margin-left: 40px;">t.function();</a></br>
  <a style="margin-left: 20px;">}</a></br>

  }
  <br><br>

  <input id="radio1" type="radio" name="answers" value="no1"><label style="margin-left: 8px;" id="answer1">Option 1</label> <br><br>
  <input id="radio2" type="radio" name="answers" value="no2"><label style="margin-left: 8px;"id="answer2">Option 1</label> <br><br>
  <input id="radio3" type="radio" name="answers" value="no3"><label style="margin-left: 8px;"id="answer3">Option 1</label> <br><br>
  <input id="radio4" type="radio" name="answers" value="no4"><label style="margin-left: 8px;"id="answer4">Option 1</label> <br><br>

  <input id="advance" name="advance" type="button" onclick="checkAnswer();"  value="Responder"/>


</p>

</body>
</html>
