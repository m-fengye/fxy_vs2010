using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace fxy_vs2010
{
    public class AccessDBHelper
    {
        //连接字符串
        static string ConnStr = "";
        /// <summary>
        /// 执行查询操作
        /// </summary>
        /// <param name="sql">要执行的Sql语句</param>
        /// <returns>查询到的数据</returns>
        static public DataSet Select(string sql)
        {
            if (ConnStr == "")
            {
                ConnStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            }
            //using包含的语句执行完之后系统自动回收，防止资源浪费
            using (OleDbConnection connection = new OleDbConnection(ConnStr))//初始化数据库连接类
            {
                //用来存储查询到的数据
                DataSet ds = new DataSet();
                //在执行网络函数，IO操作这些有可能产生异常的操作，推荐使用try-catch捕获异常
                try
                {
                    //打开数据库连接
                    connection.Open();
                    //执行sql查询，并返回数据
                    OleDbDataAdapter command = new OleDbDataAdapter(sql, connection);
                    //执行Fill()方法填充数据到ds
                    command.Fill(ds, "ds");
                }
                catch (OleDbException ex)//发生异常时的处理
                {
                    //抛出异常信息
                    throw new Exception(ex.Message);
                }
                //返回查询到的数据
                return ds;
            }
        }
        /// <summary>
        /// 执行增、删、改操作
        /// </summary>
        /// <param name="sql">要执行的sql语句</param>
        /// <returns>是否执行成功</returns>
        static public bool Update(string sql)
        {
            if (ConnStr == "")
            {
                ConnStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            }
            //using包含的语句执行完之后系统自动回收，防止资源浪费
            using (OleDbConnection connection = new OleDbConnection(ConnStr))//初始化数据库连接类
            {
                using (OleDbCommand cmd = new OleDbCommand(sql, connection))//初始化要执行的命令
                {
                    //在执行网络函数，IO操作这些有可能产生异常的操作，推荐使用try-catch捕获异常
                    try
                    {
                        //打开数据库连接
                        connection.Open();
                        //执行sql命令，返回受影响的行数
                        int rows = cmd.ExecuteNonQuery();
                        //根据行数判断是否执行成功
                        if (rows > 0)
                            return true;
                        else
                            return false;
                    }
                    catch (OleDbException E)//发生异常时的处理
                    {
                        //抛出异常信息
                        throw new Exception(E.Message);
                    }
                }
            }
        }
    }
}