package bean;

public class Person {
  // 姓名 String类型
  private String name;
  // 性别 String类型
  private String sex;
  // 年龄 int类型
  private int age;
  //是否已婚 boolean类型
  private boolean married;

    public Person() {

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public boolean isMarried() {
        return married;
    }

    public void setMarried(boolean married) {
        this.married = married;
    }
}
