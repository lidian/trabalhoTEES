<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${not empty errors}">
	<c:forEach items="${errors}" var="error">
		 ${error.category} - ${error.message}<br />
	</c:forEach>
</c:if>

<form action="<c:url value="/codigos"/>" method="post">
  
  <c:if test="${not empty codigo.id}">
    <input type="hidden" name="codigo.id" value="${codigo.id}"/>
    <input type="hidden" name="_method" value="put"/>
  </c:if>

  <div class="field">
    Nome:<br />
    <input type="text" name="codigo.nome" value="${codigo.nome}"/>
  </div>
  <div class="field">
    Tags:<br />
    <input type="text" name="codigo.tags" value="${codigo.tags}"/>
  </div>
  <div class="field">
    Linguagem:<br />
	 <input type="radio"  name="langs" value="Java" <c:if test="${codigo.linguagem eq \"Java\" }"> checked </c:if> onclick="javascript:changeLang('Java');"> JAVA
     <input type="radio" name="langs" value="C" <c:if test="${codigo.linguagem eq \"C\" }"> checked </c:if> onclick="javascript:changeLang('C');"> C
     <input type="radio" name="langs" value="Ruby" <c:if test="${codigo.linguagem eq \"Ruby\" }"> checked </c:if> onclick="javascript:changeLang('Ruby');"> RUBY
     <input type="hidden" name="codigo.linguagem" id="codigo.linguagem" value="${codigo.linguagem}"/>
	 <script type="text/javascript" >
       
       function changeLang(lang)
       {
               $('[name=codigo.linguagem]').val(lang);
       }

	</script>
  </div>
  <div class="field">
    Trecho:<br />
    <textarea name="codigo.trecho" value="${codigo.trecho}"></textarea>
  </div>
  <div class="actions">
    <button type="submit">send</button>
  </div>
</form>

<a href="<c:url value="/codigos"/>">Back</a>

