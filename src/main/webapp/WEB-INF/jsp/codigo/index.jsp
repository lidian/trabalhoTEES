<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
<h1>Listing Codigos</h1>

<table>
  <tr>
   <th>nome</th>
   <th>tags</th>
   <th>linguagem</th>
   <th>trecho</th>
   <th></th>
   <th></th>
   <th></th>
  </tr>

<c:forEach items="${codigoList}" var="codigo">
  <tr>
      <td>
      ${codigo.nome}
    </td>
      <td>
      ${codigo.tags}
    </td>
      <td>
      ${codigo.linguagem}
    </td>
      <td>
      ${codigo.trecho}
    </td>
      <td><a href="<c:url value="/codigos/${codigo.id}"/>">show</a></td>
    <td><a href="<c:url value="/codigos/${codigo.id}/edit"/>">edit</a></td>
    <td>
      <form action="<c:url value="/codigos/${codigo.id}"/>" method="post">
    	  <input type="hidden" name="_method" value="delete"/>
    	  <button type="submit" onclick="return confirm('Are you sure?')">destroy</button>
	    </form>
	  </td>
    </tr>
</c:forEach>
</table>

<br />
<a href="<c:url value="/codigos/new"/>">New Codigo</a> 
</body>
