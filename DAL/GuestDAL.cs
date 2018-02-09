using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class GuestDAL
    {


        /// <summary>
        /// 添加 
        ///</summary>
        public static int AddGuest(Live LiveModel)
        {
            string sql = string.Format("insert into  Guests (G_Name,G_IdCard, G_Gender, G_Age, G_Tel)values('{0}','{1}','{2}',{3},'{4}')", LiveModel.L_Name, LiveModel.L_IdCard, LiveModel.L_Gender == "男" ? 1 : 0, LiveModel.L_Age, LiveModel.L_Tel);
            return DBHelper.ExecuteCommand(sql);
        }
        /// <summary>
        /// 添加 
        ///</summary>
        public static int AddGuest(Guest GuestModel)
        {
            string sql = string.Format("insert into  Guests (G_Name,G_IdCard, G_Gender, G_Age, G_Tel, G_Comment )values('{0}','{1}','{2}',{3},{4},'{5}')", GuestModel.G_Name,GuestModel.G_IdCard,GuestModel.G_Gender=="男"?1:0,GuestModel.G_Age,GuestModel.G_Tel,GuestModel.G_Comment);
            return DBHelper.ExecuteCommand(sql);
        }

        /// <summary> 
        /// 根据ID修改 
        ///</summary>
        public static int UpdateGuest(Guest GuestModel)
        {
            string sql = string.Format(" UPDATE Guests  set G_Name='{0}',G_IdCard='{1}',G_Tel='{2}', G_Gender='{3}', G_Age={4}, G_Comment='{5}' where G_Id={6} ", GuestModel.G_Name, GuestModel.G_IdCard, GuestModel.G_Tel, GuestModel.G_Gender == "男" ? 1 : 0, GuestModel.G_Age, GuestModel.G_Comment, GuestModel.G_Id);
            return DBHelper.ExecuteCommand(sql);
        }

        /// <summary> 
        /// 根据主键删除 
        ///</summary>
        public static int DeleteGuest(int Id)
        {
            string sql = string.Format("delete from Guests where G_Id={0}", Id);
            return DBHelper.ExecuteCommand(sql);
        }

        /// <summary> 
        /// 查询条数 
        ///</summary>
        public static int CountNumber(string NewWHere)
        {
            string sql = "";
            if (!string.IsNullOrEmpty(NewWHere))
            {
                sql = "select count(*) from Guests where 1=1 " + NewWHere;
            }
            else
            {
                sql = "select count(*) from Guests";

            }
            return DBHelper.GetIntScalar(sql);
        }


        /// <summary>
        /// 分页 
        ///</summary> 
        public static List<Guest> PageSelectGuest(int pageSize, int pageIndex, string WhereSrc, string PXzd, string PXType)
        {
            List<Guest> list = new List<Guest>(); 
	    string sql = string.Format("SELECT top {0} * FROM Guests where G_Id not in( select top {1} G_Id from Guest where 1=1 {2} order by {3} {4}) and 1=1 {2} order by {3} {4} ",pageSize, pageSize*pageIndex,WhereSrc, PXzd,PXType);
            using (DataTable table = DBHelper.GetDataSet(sql))
            {
                list = GetList(table);
            }
            return list;
        }

        /// <summary>
        /// 分页 
        ///</summary> 
        public static DataTable  PageSelectGuest2(int pageSize, int pageIndex, string WhereSrc, string PXzd, string PXType)
        {
            List<Guest> list = new List<Guest>();
            string sql = string.Format("SELECT top {0} * FROM Room INNER JOIN Guest ON Room.R_Id = Guest.R_Id where G_Id not in( select top {1} G_Id from Room INNER JOIN Guest ON Room.R_Id = Guest.R_Id where 1=1 {2} order by {3} {4}) and 1=1 {2} order by {3} {4} ", pageSize, pageSize * pageIndex, WhereSrc, PXzd, PXType);
            return DBHelper.GetDataSet(sql);
        }


        /// <summary> 
        /// 根据主键查询实体 
        ///</summary>
        public static Guest GetIdByGuest(int Id)
        {
            string sql = string.Format("SELECT * FROM Guests where G_Id={0} ",Id);
            Guest GuestModel = new Guest();
            using (DataTable table = DBHelper.GetDataSet(sql))
            {
                GuestModel= GetMode(table);
            }
            return GuestModel;
        }
        /// <summary>
        /// 查询全部
        /// </summary>
        public static List<Guest> AllData(string NewWHere)
        {
            List<Guest> list = new List<Guest>();

             string sql = "";
            if (!string.IsNullOrEmpty(NewWHere))
            {
               sql = "select * from Guests where 1=1 "+NewWHere;
            }
            else
            {
               sql = "select * from Guests";
            }
            using (DataTable table = DBHelper.GetDataSet(sql))
            {

                list = GetList(table);
            }
            return list;
        }
        /// <summary> 
        /// 私有方法 
        ///</summary>
        private static List<Guest> GetList(DataTable table)
        {
            List<Guest> list = new List<Guest>();
            foreach (DataRow row in table.Rows)
            {
                Guest GuestModel = new Guest(); 
                GuestModel.G_Id = Convert.ToInt32(row["G_Id"]); 
                GuestModel.G_Name = Convert.ToString(row["G_Name"]);
                GuestModel.G_IdCard = Convert.ToString(row["G_IdCard"]);
                GuestModel.G_Gender = Convert.ToByte(row["G_Gender"]) == 1 ? "男" : "女";
                GuestModel.G_Age = Convert.ToInt32(row["G_Age"]); 
                GuestModel.G_Tel = Convert.ToString(row["G_Tel"]); 

                list.Add(GuestModel);

            }
            return list;
        }

        /// <summary> 
        /// 私有方法 
        ///</summary>
        private static Guest GetMode(DataTable table)
        {
            Guest GuestModel = new Guest();
            foreach (DataRow row in table.Rows)
            {
                GuestModel.G_Name = Convert.ToString(row["G_Name"]); 
                GuestModel.G_IdCard = Convert.ToString(row["G_IdCard"]);
                GuestModel.G_Tel = Convert.ToString(row["G_Tel"]);
                GuestModel.G_Age = Convert.ToInt32(row["G_Age"]);
                GuestModel.G_Gender = Convert.ToString(row["G_Gender"]);
                GuestModel.G_Comment = Convert.ToString(row["G_Comment"]); 
            }
            return GuestModel;
        }
    }
}