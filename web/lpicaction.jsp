<%@page import="java.sql.*"%>
<%@page import="DB.DB"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.File" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItem"%>
<%@ page import="org.apache.commons.fileupload.*"%>

<%
    String nt = "";
    String fpath = "";
    
    String trid = session.getAttribute("trid").toString();
   
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    if (!isMultipart) {
    } else {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List items = null;
        try {
            items = upload.parseRequest(request);
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
        String uploadfile = config.getServletContext().getRealPath("/") + "luploads/";
        // System.out.println(uploadfile);
        File uploaddir = new File(uploadfile);
        if (!uploaddir.exists()) {
            uploaddir.mkdir();
        }
        Iterator itr = items.iterator();
        while (itr.hasNext()) {
            FileItem item = (FileItem) itr.next();
            if (item.isFormField()) {
                //String pcode = item.getFieldName();
             //   descp = item.getString();
            } else {

                String itemName = new File(item.getName()).getName();

                File savedFile = new File(uploadfile + trid+ itemName);
                item.write(savedFile);
                fpath = trid+itemName;
            }
            //out.println("<tr><td><b>Your file has been saved at the loaction:</b></td></tr><tr><td><b>"+config.getServletContext().getRealPath("/")+"uploadedFiles"+"\\"+itemName+"</td></tr>");
        }
        if (DB.executeUpdate("update tbl_travel set limg='" + fpath + "' where trid="+trid)) {

            //System.out.println("insert into tblsyllabus values("+"null"+",'"+request.getParameter("t4")+"','"+request.getParameter("t3")+"','"+fpath+"'");                              {
            out.println("<script>alert('uploaded, Wait For Approvel');window.location='index.html';</script>");
        }

    }


%>

