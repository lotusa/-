using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;

namespace BLL
{
    public class RoomBLL
    {
        /// <summary> 
        /// ��� 
        ///</summary> 
        public static int AddRoom(Room RoomModel)
        {
            return RoomDAL.AddRoom(RoomModel);
        }
        /// <summary> 
        /// ��������ɾ�� 
        ///</summary> 
        public static int DeleteRoom(int Id)
        {
            return RoomDAL.DeleteRoom(Id);
        }
        /// <summary> 
        /// ��ҳ 
        ///</summary> 
        public static List<Room> PageSelectRoom(int pageSize, int pageIndex, string WhereSrc, string PXzd, string PXType)
        {
            pageIndex = pageIndex - 1;
            return RoomDAL.PageSelectRoom(pageSize, pageIndex, WhereSrc, PXzd, PXType);
        }
        /// <summary> 
        /// �޸� 
        ///</summary> 
        public static int UpdateRoom(Room RoomModel)
        {
            return RoomDAL.UpdateRoom(RoomModel);
        }
        /// <summary> 
        /// ��ѯȫ��
        ///</summary>
        public static List<Room> AllData(string NewWHere)
        {
            return RoomDAL.AllData(NewWHere);
        }
        /// <summary> 
        /// ��ѯ���� 
        ///</summary>
        public static int CountNumber(string NewWHere)
        {
            return RoomDAL.CountNumber(NewWHere);
        }
        /// <summary> 
        /// ����������ѯʵ�� 
        ///</summary> 
        public static Room GetRoomById(int Id)
        {
            return RoomDAL.GetRoomById(Id);
        }
    }
}