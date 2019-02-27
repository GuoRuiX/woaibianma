import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author admin
 * @create 2019-02-25  8:40
 */
public class test {

    public static void main(String[] args) throws Exception {
        File file = new File("F:/java");
//        获取所有带.TXT的文件
        File[] files = file.listFiles(new FilenameFilter() {
            @Override
            public boolean accept(File dir, String name) {
                return name.endsWith(".txt");
            }
        });


//        创建将要复制到那个文件夹中
        File filecopy = new File("F:\\jad");
        for (File file1 : files) {
            String s = file1.getName().replaceAll(".java", ".jad");
//            将文件复制到指定盘符中
            BufferedInputStream stream = new BufferedInputStream(new FileInputStream(file1));
            BufferedOutputStream bos=new BufferedOutputStream(new FileOutputStream(new File(filecopy,s)));
        }

    }


    public static void  t(){
        String a="abc";
        String b="";
        String[] split = a.split("");
        for (int i = split.length-1; i >= 0; i--) {
            b+=""+split[i];
        }
        System.out.println(b);


        StringBuffer stringBuffer = new StringBuffer(a);
        String s = stringBuffer.reverse().toString();
        System.out.println(s);
    }

}
