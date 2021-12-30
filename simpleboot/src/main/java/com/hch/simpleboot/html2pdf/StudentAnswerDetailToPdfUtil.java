package com.hch.simpleboot.html2pdf;

import com.itextpdf.text.pdf.BaseFont;
import com.lowagie.text.DocumentException;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.springframework.util.ResourceUtils;
import org.xhtmlrenderer.pdf.ITextFontResolver;
import org.xhtmlrenderer.pdf.ITextRenderer;

import java.io.*;
import java.util.Map;
import java.util.function.BiFunction;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ITextToPdfUtil {



    private static final String FONT = "static/font/simsun.ttc";

    private static Configuration freemarkerConf = null;

    static {
        freemarkerConf = new Configuration();
        try {
            String STATIC_PATH = ResourceUtils.getURL("classpath:").getPath();
            // 配置模板加载路径
            freemarkerConf.setDirectoryForTemplateLoading(new File( STATIC_PATH + File.separator + "static"));
        } catch (Exception ie) {
            ie.printStackTrace();
        }
    }

    public static String htmlRender(Map<String, Object> data, String html) {
        Writer out = new StringWriter();
        try {
            // freemarker获取模板
            Template template = freemarkerConf.getTemplate(html, "UTF-8");
            // ftl模板填充数据
            template.process(data, out);
            out.flush();
            return out.toString();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                out.close();
            } catch (IOException ie) {
                ie.printStackTrace();
            }
        }

        return null;
    }

    public static void createPdf(String content, String destPath) throws IOException, DocumentException{
        ITextRenderer render = new ITextRenderer();
        ITextFontResolver fontResolver = render.getFontResolver();
        try {
            // 配置字体
            fontResolver.addFont(FONT, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
        } catch (DocumentException | IOException  e) {
            e.printStackTrace();
        }
        String afterProcess = processUnClosedTag(content);
        // 填充html内容
        render.setDocumentFromString(afterProcess);
        // 设置图片路径
        //render.getSharedContext().setBaseURL("http://192.168.42.30");
        // 渲染布局
        render.layout();
        // 创建pdf
        render.createPDF(new FileOutputStream(destPath));

    }

    private static String processUnClosedTag(String htmlContent) {
        String str = htmlContent.replaceAll("<br>", "<br/>")
                .replaceAll("</img>", "")
                .replaceAll("[\\x00-\\x08\\x0b-\\x0c\\x0e-\\x1f]", ""); // 处理掉Unicode在xml中无法解析的字符

        // "col " col 标签加空格为了防止colgroup的补全
        String selfClose[] = {"img", "col "};
        StringBuffer multiProcess = new StringBuffer(str);
        for (String tag : selfClose) {
            multiProcess = processSelfClose("<" + tag + "[^<>]*?>", multiProcess, "</" + tag + ">");
        }

        // 替换其中的<img .*> -> <img .*></img>, 使标签闭合
        return multiProcess.toString();
    }

    public static StringBuffer processSelfClose(String pattern, StringBuffer str, String endTag) {
        return replacePatternContent(pattern, str, endTag,
                (t, s) -> {
                    if (!s.endsWith("/>")){
                        // 这里是 <img ... > </img>
                        return s + t;
                    } else {
                        // 这里是img闭合标签,不处理： <img ... />
                        return s;
                    }
                });
    }

    public static StringBuffer replacePatternContent(String patStr, StringBuffer content, String extra,
                                               BiFunction<String, String, String> extraWithGroupOp) {
        Pattern pattern = Pattern.compile(patStr);
        Matcher matcher = pattern.matcher(content);
        StringBuffer buffer = new StringBuffer();
        while(matcher.find()) {
            String group = matcher.group();
            matcher.appendReplacement(buffer, extraWithGroupOp.apply(extra, group));
        }
        matcher.appendTail(buffer);
        return buffer;
    }

}
