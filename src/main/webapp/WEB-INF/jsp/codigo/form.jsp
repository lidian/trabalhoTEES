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
	 <input type="radio"  name="langs" value="java" <c:if test="${codigo.linguagem eq \"java\" }"> checked </c:if> onclick="javascript:changeLang('java');"> JAVA
     <input type="radio" name="langs" value="c" <c:if test="${codigo.linguagem eq \"c\" }"> checked </c:if> onclick="javascript:changeLang('c');"> C
     <input type="radio" name="langs" value="ruby" <c:if test="${codigo.linguagem eq \"ruby\" }"> checked </c:if> onclick="javascript:changeLang('ruby');"> RUBY
     <input type="hidden" name="codigo.linguagem" id="codigo.linguagem" value="${codigo.linguagem}"/>
	 <script type="text/javascript" >       
       function changeLang(lang) {
               $('[name=codigo.linguagem]').val(lang);
       }
	</script>
  </div>
  <div class="field">
    Trecho:<br />
    <textarea  name="codigo.trecho" rows="3" cols="40">${codigo.trecho}</textarea>
  </div>
  <div class="actions">
    <button type="submit">send</button>
  </div>
</form>

<a href="<c:url value="/codigos"/>">Back</a>

