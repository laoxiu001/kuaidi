/**
 * Created by this on 2018/3/17.
 */
//SQL语句映射文件，以供api逻辑调用
var sqlMap = {
  user: {
    add: 'insert into user( username, password,email) values (?,?,?)',//注册功能
    addRecycle: 'insert into recycle( resource,area,damage,manner,name,tel,address) values (?,?,?,?,?,?,?)',//注册功能
    select_name: 'SELECT * from user where username = ?',    //查询 username
    select_password: 'SELECT * from user where password = ?',      //查询 password
    select_post: 'SELECT * from post limit 8',      //查询 帖子数据
    select_news: 'SELECT * from news limit 8',      //查询 新闻数据
  }
}
module.exports = sqlMap;
