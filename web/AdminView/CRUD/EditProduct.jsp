<%-- 
    Document   : EditProduct
    Created on : Mar 21, 2019, 1:34:45 PM
    Author     : Dandy Huu
--%>

<%@page import="Models.clsMonan"%>
<%@page import="CSDL.tbMonan"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <%
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        File file;
        int maxFileSize = 5000 * 1024;
        int maxMemSize = 5000 * 1024;
        String filePath = "D:/Lap trinh Java/BigLesson_JavaWeb/web/Plugins/images/";

        String contentType = request.getContentType();
        if ((contentType.indexOf("multipart/form-data") >= 0)) {

            DiskFileItemFactory factory = new DiskFileItemFactory();
            factory.setSizeThreshold(maxMemSize);
            factory.setRepository(new File("D:/Lap trinh Java/BigLesson_JavaWeb/web/Plugins"));
            ServletFileUpload upload = new ServletFileUpload(factory);
            upload.setSizeMax(maxFileSize);
            try {
                List fileItems = upload.parseRequest(request);
                Iterator i = fileItems.iterator();
                 String SpID = "";
                    String SpName = "";
                    double SpGia = 0;
                    String SpLoaimon = "";
                    String SpAnh = "";
                    int SpHot = 0;
                    int SpNew = 0;
                    String SpMota = "";
                while (i.hasNext()) {
                   

                    FileItem fi = (FileItem) i.next();
                    String fieldName = fi.getFieldName();

                    out.println("<p>fieldname: " + fieldName + "</p>");
                    //lặp các input submit từ form
                    if (fi.isFormField()) //nếu là input thường
                    {
                //switch(fieldName)
                        //{
                        if (fieldName.equalsIgnoreCase("SpID")) {
                            SpID = fi.getString();
                            out.println("<br> ID: " + SpID);
                        } 
                        else if (fieldName.equalsIgnoreCase("SpName")) {

                            SpName = fi.getString();
                            out.println("<br> Ten sp: " + SpName);
                        }
                        else if (fieldName.equalsIgnoreCase("SpGia")) {

                          SpGia = Double.parseDouble(fi.getString() );
                            out.println("<br> Gia : " + SpGia);
                        }
                         else if (fieldName.equalsIgnoreCase("SpLoaimon")) {
                             String loaimon = fi.getString();
//                             tbLoaimon lm = new tbLoaimon();
//                             SpLoaimon = lm.LayIdCate(loaimon);
                            SpLoaimon = loaimon;
                          
                            out.println("<br> SpLoaimon : " + SpLoaimon);
                        }
                         else if (fieldName.equalsIgnoreCase("SpHot")) {

                            if (fi.getString().equals("Hot")) {
                                 SpHot = 1;   
                                }
                            out.println("<br> Sp hot: " + SpHot);
                        } 
                         else if (fieldName.equalsIgnoreCase("SpNew")) {

                           if (fi.getString().equals("New")) {
                               SpNew = 1;     
                            }
                            out.println("<br> sp new: " + SpNew);
                        } 
                         else if (fieldName.equalsIgnoreCase("SpMota")) {

                            SpMota = fi.getString();
                            out.println("<br> Mo ta: " + SpMota);
                        }
                         else {
                            out.println("<br> other <br>");
                        }
                //}

                    } else {//nếu là input dạng file
                        String fileName = fi.getName();
                        boolean isInMemory = fi.isInMemory();
                        long sizeInBytes = fi.getSize();
                        file = new File(filePath + fileName);
                        fi.write(file);
                        SpAnh = fileName;
                        out.println("Uploaded Filename: " + filePath + fileName + "<br>");
                    }
                }
                
                tbMonan monan = new tbMonan();
                clsMonan item2 = new clsMonan(SpID, SpName, SpMota, SpAnh, SpHot, SpNew, SpGia, SpLoaimon);
                
                boolean kq  = monan.SuaMonAn(item2);
                if (kq == true) {
                        response.sendRedirect("../QLSanpham.jsp");
                    }
                else{
                     out.println("Uploaded Filename: " + SpAnh + "<br>");
                }
//                
                
            } catch (Exception ex) {
                System.out.println(ex);
            }
        } else {
            out.println("<p>No file uploaded</p>");
        }
    %>
</html>
