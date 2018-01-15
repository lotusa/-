using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;

namespace BLL
{
    public class RoomTypeBLL
    {
        /// <summary> 
        /// ��� 
        ///</summary> 
        public static int AddRoomType(RoomType RoomTypeModel)
        {
            return RoomTypeDAL.AddRoomType(RoomTypeModel);
        }
        /// <summary> 
        /// ��������ɾ�� 
        ///</summary> 
        public static int DeleteRoomType(int Id)
        {
            return RoomTypeDAL.DeleteRoomType(Id);
        }
        /// <summary> 
        /// ��ҳ 
        ///</summary> 
        public static List<RoomType> PageSelectRoomType(int pageSize, int pageIndex, string WhereSrc, string PXzd, string PXType)
        {
            pageIndex = pageIndex - 1;
            return RoomTypeDAL.PageSelectRoomType(pageSize, pageIndex, WhereSrc, PXzd, PXType);
        }
        /// <summary> 
        /// �޸� 
        ///</summary> 
        public static int UpdateRoomType(RoomType RoomTypeModel)
        {
            return RoomTypeDAL.UpdateRoomType(RoomTypeModel);
        }
        /// <summary> 
        /// ��ѯȫ��
        ///</summary>
        public static List<RoomType> AllData(string NewWHere)
        {
            return RoomTypeDAL.AllData(NewWHere);
        }
        /// <summary> 
        /// ��ѯ���� 
        ///</summary>
        public static int CountNumber(string NewWHere)
        {
            return RoomTypeDAL.CountNumber(NewWHere);
        }
        /// <summary> 
        /// ����������ѯʵ�� 
        ///</summary> 
        public static RoomType GetRoomTypeById(int Id)
        {
            return RoomTypeDAL.GetRoomTypeById(Id);
        }
    }
}