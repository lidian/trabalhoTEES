<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>

<p>
  <b>Nome:</b>
   ${codigo.nome}
</p>
<p>
  <b>Tags:</b>
   ${codigo.tags}
</p>
<p>
  <b>Linguagem:</b>
   ${codigo.linguagem}
</p>
<p>
  <b>Trecho:</b>
   <pre class="brush: ${codigo.linguagem}">
		${codigo.trecho}
	</pre>
</p>

<a href="<c:url value="/codigos/${codigo.id}/edit"/>">Edit</a>
<a href="<c:url value="/codigos"/>">Back</a>

</body>
