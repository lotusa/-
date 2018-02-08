using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class RoomDAL
    {


        /// <summary>
        /// ��� 
        ///</summary>
        public static int AddRoom(Room RoomModel)
        {
            string sql = string.Format("insert into  Room (R_No,R_Tel,R_State,Rt_Id, R_Beds,  RoomModel.R_EmptyBeds)values('{0}','{1}','{2}',{3}, {4}, {5})", RoomModel.R_No, RoomModel.R_Tel, RoomModel.R_State, RoomModel.Rt_Id, RoomModel.R_Beds, RoomModel.R_EmptyBeds);
            return DBHelper.ExecuteCommand(sql);
        }

        /// <summary> 
        /// ����ID�޸� 
        ///</summary>
        public static int UpdateRoom(Room RoomModel)
        {
            string sql = string.Format(" UPDATE Room  set R_No='{0}',R_Tel='{1}',R_State='{2}',Rt_Id={3}, R_Beds={4},R_EmptyBeds={5} where R_Id={6} ",RoomModel.R_No,RoomModel.R_Tel,RoomModel.R_State,RoomModel.Rt_Id , RoomModel.R_Beds, RoomModel.R_EmptyBeds, RoomModel.R_Id);
            return DBHelper.ExecuteCommand(sql);
        }

        /// <summary> 
        /// ��������ɾ�� 
        ///</summary>
        public static int DeleteRoom(int Id)
        {
            string sql = string.Format("delete from Room where R_Id={0}", Id);
            return DBHelper.ExecuteCommand(sql);
        }

        /// <summary> 
        /// ��ѯ���� 
        ///</summary>
        public static int CountNumber(string NewWHere)
        {
            string sql = "";
            if (!string.IsNullOrEmpty(NewWHere))
            {
                sql = "select count(*) from Room where 1=1 " + NewWHere;
            }
            else
            {
                sql = "select count(*) from Room";

            }
            return DBHelper.GetIntScalar(sql);
        }

        /// <summary>
        /// ��ҳ 
        ///</summary> 
        public static List<Room> PageSelectRoom(int pageSize, int pageIndex, string WhereSrc, string PXzd, string PXType)
        {
            List<Room> list = new List<Room>(); 
	    string sql = string.Format("SELECT top {0} * FROM Room where R_Id not in( select top {1} R_Id from Room where 1=1 {2} order by {3} {4}) and 1=1 {2} order by {3} {4} ",pageSize, pageSize*pageIndex,WhereSrc, PXzd,PXType);
            using (DataTable table = DBHelper.GetDataSet(sql))
            {
                list = GetList(table);
            }
            return list;
        }

        /// <summary> 
        /// ����������ѯʵ�� 
        ///</summary>
        public static Room GetRoomById(int Id)
        {
            string sql = string.Format("SELECT * FROM Room where R_Id={0} ",Id);
            Room RoomModel = new Room();
            using (DataTable table = DBHelper.GetDataSet(sql))
            {
                RoomModel= GetModel(table);
            }
            return RoomModel;
        }
        /// <summary>
        /// ��ѯȫ��
        /// </summary>
        public static List<Room> AllData(string NewWHere)
        {
            List<Room> list = new List<Room>();

             string sql = "";
            if (!string.IsNullOrEmpty(NewWHere))
            {
               sql = "select * from Room where 1=1 "+NewWHere;
            }
            else
            {
               sql = "select * from Room";
            }
            using (DataTable table = DBHelper.GetDataSet(sql))
            {

                list = GetList(table);
            }
            return list;
        }
        /// <summary> 
        /// ˽�з��� 
        ///</summary>
        private static List<Room> GetList(DataTable table)
        {
            List<Room> list = new List<Room>();
            foreach (DataRow row in table.Rows)
            {
                Room RoomModel = new Room(); 
                RoomModel.R_Id = Convert.ToInt32(row["R_Id"]); 
                RoomModel.R_No = Convert.ToString(row["R_No"]); 
                RoomModel.R_Tel = Convert.ToString(row["R_Tel"]); 
                RoomModel.R_State = Convert.ToString(row["R_State"]); 
                RoomModel.Rt_Id = Convert.ToInt32(row["Rt_Id"]);
                RoomModel.R_Beds = Convert.ToInt32(row["R_Beds"]);
                RoomModel.R_EmptyBeds = Convert.ToInt32(row["R_EmptyBeds"]);
                list.Add(RoomModel);

            }
            return list;
        }
        /// <summary> 
        /// ˽�з��� 
        ///</summary>
        private static Room GetModel(DataTable table)
        {
            Room RoomModel = new Room();
            foreach (DataRow row in table.Rows)
            {
                RoomModel.R_Id = Convert.ToInt32(row["R_Id"]); 
                RoomModel.R_No = Convert.ToString(row["R_No"]); 
                RoomModel.R_Tel = Convert.ToString(row["R_Tel"]); 
                RoomModel.R_State = Convert.ToString(row["R_State"]); 
                RoomModel.Rt_Id = Convert.ToInt32(row["Rt_Id"]);
                RoomModel.R_Beds = Convert.ToInt32(row["R_Beds"]);
                RoomModel.R_EmptyBeds = Convert.ToInt32(row["R_EmptyBeds"]);

            }
            return RoomModel;
        }
    }
}