package edu.xmuter.servlet;

import edu.xmuter.bean.Used;
import edu.xmuter.bean.User;
import edu.xmuter.dao_imp.UsedDaoImp;
import edu.xmuter.utils.Time_Utils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.sql.Date;
import java.util.List;
import java.util.Locale;


@WebServlet("/Servlet_post_used")
public class Servlet_post_used extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String base_path = request.getScheme() + "://" + request.getServerName() + ":" +
                request.getServerPort() + request.getContextPath() + "/";//getServerPort 会带上一个”/”
        // 获得磁盘文件条目工厂。
        DiskFileItemFactory factory = new DiskFileItemFactory();
        String path = request.getSession().getServletContext().getRealPath("/images");//存储图片的路径
        File file = new File(path);
        if (!file.exists()) file.mkdir();
        // 设置暂时存放文件的存储室，这个存储室可以和最终存储文件的文件夹不同。因为当文件很大的话会占用过多内存所以设置存储室。
        factory.setRepository(file);
        // 设置缓存的大小，当上传文件的容量超过缓存时，就放到暂时存储室。
        factory.setSizeThreshold(1024 * 1024);
        // 上传处理工具类（高水平API上传处理？）
        ServletFileUpload upload = new ServletFileUpload(factory);
        Used used_thing = new Used();

        try {
            List<FileItem> list = upload.parseRequest(request);//解析请求
            for (FileItem item : list) {
                // 如果获取的表单信息是普通的文本信息。即通过页面表单形式传递来的字符串。
                if (item.isFormField()) {
                    // 获取用户具体输入的字符串，
                    String value = item.getString();
                    value = new String(value.getBytes("ISO8859_1"), "utf-8");//避免中午乱码
                    if (item.getFieldName().equals("used_name"))
                        used_thing.setUsed_name(value);
                    else if (item.getFieldName().equals("used_desc"))
                        used_thing.setUsed_desc(value);
                    else if (item.getFieldName().equals("price"))
                        used_thing.setPrice(Double.parseDouble(value));
                } else {// 如果传入的是非简单字符串，而是图片，音频，视频等二进制文件。
                    String value = item.getName();// 获取文件名 ,用于后面重命名时截取后缀 ，如png,jpg等等
                    String realFileName = Time_Utils.get_current_time_in_long()
                            + value.substring(value.lastIndexOf("."), value.length());// 对图片重新命名
                    used_thing.setImg_address(base_path + "images/" + realFileName);
//                    store_image(path, item, realFileName);//存储的方法1
                    store_image2(path, item, realFileName);//存储的方法2
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.setContentType("text/html");
        // 存取在数据库
        used_thing.setUsed_date(new Date(Time_Utils.get_current_time_in_long()));
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        used_thing.setAuthor_no(user.getUno());
        PrintWriter out = response.getWriter();
        if (new UsedDaoImp().add_used(used_thing)) {
            out.print("<script>alert('post successfully')</script>");
            out.print("<script>window.location.href='" + base_path + "view/post_used.jsp'</script>");
        } else {
            out.print("<script>alert('fail to post')</script>");
            out.print("<script>window.history.go(-1)</script>");
        }
    }

    private void store_image2(String path, FileItem item, String realFileName) throws Exception {
        item.write(new File(path, realFileName));
    }

    /*
     * item  图片的二进制流
     *  path： 要存放的文件路径
     * realFileName:自己生成的文件名
     * */
    private void store_image(String path, FileItem item, String realFileName) throws IOException {
        OutputStream out = new FileOutputStream(new File(path, realFileName));//new File(要存放的文件路径，文件名)
        InputStream in = item.getInputStream();// 以流的形式读取上传的文件
        int length = 0;//记录每次读取的长度
        byte[] buf = new byte[1024];//buffer == 缓存
        while ((length = in.read(buf)) != -1) {
            out.write(buf, 0, length);//写入
        }
        in.close();
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
