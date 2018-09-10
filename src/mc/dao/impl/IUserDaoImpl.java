package mc.dao.impl;

import mc.dao.IUserDao;
import mc.domain.User;

import mc.util.XmlUtils;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import java.text.SimpleDateFormat;


//IUserDao接口的实现类
public class IUserDaoImpl  implements IUserDao {

    @Override
    public User find(String userName, String userPwd) {
        try {
            Document document = XmlUtils.getDocument();
            //使用XPath表达式来操作XML节点
            Element e = (Element) document.selectSingleNode("//user[@userName='" + userName + "' and @userPwd='" + userPwd + "']");
            if (e == null) {
                return null;
            }

            User user = new User();
            user.setId(e.attributeValue("id"));
            user.setEmail(e.attributeValue("email"));
            user.setUserPwd(e.attributeValue("userPwd"));
            user.setUserName(e.attributeValue("userName"));
            String birth = e.attributeValue("birthday");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            user.setBirthday(sdf.parse(birth));
            return user;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public void add(User user) {
        try {
            Document document = XmlUtils.getDocument();
            Element root = document.getRootElement();
            //创建user节点，并挂到root
            Element user_node = root.addElement("user");
            user_node.addAttribute("id", user.getId());
            user_node.addAttribute("userName", user.getUserName());
            user_node.addAttribute("userPwd", user.getUserPwd());
            user_node.addAttribute("email", user.getEmail());
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            user_node.addAttribute("birthday", sdf.format(user.getBirthday()));
            XmlUtils.write2Xml(document);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    @Override
    public User find(String userName) {
        try {
            Document document = XmlUtils.getDocument();
            //使用XPath表达式来操作XML节点
            Element e = (Element) document.selectSingleNode("//user[@userName='" + userName + "']");

            if (e == null) {
                return null;
            }

            User user = new User();
            user.setId(e.attributeValue("id"));
            user.setEmail(e.attributeValue("email"));
            user.setUserPwd(e.attributeValue("userPwd"));
            user.setUserName(e.attributeValue("userName"));
            String birth = e.attributeValue("birthday");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            user.setBirthday(sdf.parse(birth));
            return user;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
