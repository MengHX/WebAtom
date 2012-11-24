package com.vcher.coffee.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * User: menghx
 * Date: 4/7/12
 * Time: 10:04 AM
 */
public class FileUtils {

    public static String genFileName(String contentType) {
        return DateUtils.getCurrentDate(DateUtils.YYYYMMDDHHMMSSMS) + "F" + getFileExtByContentType(contentType);
    }

    public static String uploadFile(File srcName, String type, String destDir) {
        FileOutputStream fos = null;
        FileInputStream fis = null;
        String dfStr= genFileName(type);
        System.out.println(dfStr);
        try {
            File df = new File(destDir + File.separator+dfStr);
            if (!df.exists()) {
                new File(destDir + File.separator).mkdirs();
                df.createNewFile();
            }
            fos = new FileOutputStream(df);
            fis = new FileInputStream(srcName);
            byte[] buffer = new byte[1024];
            int len = 0;
            while ((len = fis.read(buffer)) > 0) {
                fos.write(buffer, 0, len);
            }
        } catch (Exception e) {
            System.out.println("文件上传失败");
            e.printStackTrace();
        } finally {
            close(fos, fis);
        }
        return dfStr.toString();
    }

    public static void delFileByName(String fileName){
        File file = new File(fileName);
        if(file.exists()){
            file.delete();
        }
    }

    private static void close(FileOutputStream fos, FileInputStream fis) {
        if (fis != null) {
            try {
                fis.close();
            } catch (IOException e) {
                System.out.println("FileInputStream关闭失败");
                e.printStackTrace();
            }
        }
        if (fos != null) {
            try {
                fos.close();
            } catch (IOException e) {
                System.out.println("FileOutputStream关闭失败");
                e.printStackTrace();
            }
        }
    }

    public static String getFileExtByContentType(String contentType) {
        String ext=".txt";
        if (contentType.indexOf("png") > 0) {
            ext = ".png";
        }else if(contentType.indexOf("jpeg")>0){
            ext = ".jpg";
        }else if (contentType.indexOf("gif")>0){
            ext = ".gif";
        }
        return ext;
    }

}
