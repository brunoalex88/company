<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ul> 
    <li><a href="/company">Home</a></li> 
    <li><a href="#">Client</a> 
      <ul> 
        <li><a href="<c:url value="/client/add" />">Add</a></li> 
        <li><a href="/company/client/list">List</a></li>  
      </ul> 
    </li>
    <li><a href="#">Device</a>
      <ul> 
        <li><a href="<c:url value="/device/add" />">Add</a></li> 
        <li><a href="<c:url value="/device/list" />">List</a></li>  
      </ul> 
    </li>
    <li>
    	<a href="/company/logout">Logout</a>
    </li>
</ul>
