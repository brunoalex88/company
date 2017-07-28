<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="menu"> 
    <li><a href="<c:url value="/" />">Home</a></li> 
    <li><a href="#">Client</a> 
      <ul class="submenu-1"> 
        <li><a href="<c:url value="/client/add" />">Add</a></li> 
        <li><a href="<c:url value="/client/list" />">List</a></li>  
      </ul> 
    </li>
    <li><a href="#">Device</a>
      <ul class="submenu-1"> 
        <li><a href="<c:url value="/device/add" />">Add</a></li> 
        <li><a href="<c:url value="/device/list" />">List</a></li>  
      </ul> 
    </li>
    <li>
    	<a href="<c:url value="/logout" />">Logout</a>
    </li>
</ul>