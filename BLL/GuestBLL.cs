using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using Model;

namespace BLL
{
    public class GuestBLL
    {
        public static List<Guest> AllData(string NewWHere)
        {
            return GuestDAL.AllData(NewWHere);
        }
    }
}
