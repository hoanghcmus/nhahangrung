using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Core;
using DataAccess.Help;
using System.Data;
using DataAccess.Connect;

namespace DataAccess.Classes
{
    public class DatBan
    {
        #region khai bao cac thuoc tinh anh xa

        public int ID { get; set; }
        public string Ten { get; set; }

        public string DiaChi { get; set; }
        public string Email { get; set; }

        public int SDT { get; set; }

        public string SoNguoi { get; set; }
        public DateTime Ngay { get; set; }

        public string Gio { get; set; }
        public int TrangThai { get; set; }
        public DateTime NgayGui { get; set; }



        public DatBan() { }
        #endregion

        #region Cac phuong thuc Update du lieu
        public static int Them(DatBan datban)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQueryWithOutput("@ID", "DatBan_Them", datban.ID, datban.Ten, datban.DiaChi, datban.Email, datban.SDT, datban.SoNguoi, datban.Ngay, datban.Gio, datban.TrangThai, datban.NgayGui);
                return Convert.ToInt32(rs);
            }
            catch
            {
                return 0;
            }
        }
        public static bool Sua(DatBan datban)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("DatBan_Sua", datban.ID, datban.Ten, datban.DiaChi, datban.Email, datban.SDT, datban.SoNguoi, datban.Ngay, datban.Gio, datban.TrangThai, datban.NgayGui);
                return Convert.ToInt32(rs) > 0;
            }
            catch
            {
                return false;
            }
        }
        public static bool SuaTrangThai(int id, string trangthai)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("DatBan_SuaTrangThai", id, ConvertType.ToInt32(trangthai));
                return Convert.ToInt32(rs) > 0;
            }
            catch
            {
                return false;
            }
        }
        public static bool Xoa(string id)
        {
            try
            {
                object rs = DataProvider.Instance.ExecuteNonQuery("DatBan_Xoa", Convert.ToInt32(id));
                return Convert.ToInt32(rs) > 0;
            }
            catch
            {
                return false;
            }
        }
        #endregion

        #region Cac phuong thuc truy xuat du lieu
        public static int Dem()
        {
            try
            {
                return Convert.ToInt32(DataProvider.Instance.ExecuteScalar("DatBan_Dem"));
            }
            catch
            {
                return 0;
            }
        }
        public static int DemTheoTrangThai(string trangthai)
        {
            try
            {
                return Convert.ToInt32(DataProvider.Instance.ExecuteScalar("DatBan_DemTheoTrangThai", ConvertType.ToInt32(trangthai)));
            }
            catch
            {
                return 0;
            }
        }

        public static List<DatBan> ByDate(string startDate, string endDate)
        {
            try
            {
                return CBO.FillCollection<DatBan>(DataProvider.Instance.ExecuteReader("DatBan_ByDate", startDate, endDate));
            }
            catch (Exception)
            {
                return new List<DatBan>();
            }
        }
        public static DatBan LayTheoID(string id)
        {
            try
            {
                return CBO.FillObject<DatBan>(DataProvider.Instance.ExecuteReader("DatBan_LayTheoID", Convert.ToInt32(id)));
            }
            catch
            {
                return null;
            }
        }
        public static List<DatBan> LayTatCa(string page, out int howManyPages)
        {
            IDataReader reader = null;
            try
            {
                int pageSize = GlobalConfiguration.PageSize;
                reader = DataProvider.Instance.ExecuteReader("DatBan_LayTatCa", GlobalConfiguration.DescriptionLength, page, GlobalConfiguration.PageSize);
                reader.Read();
                howManyPages = (int)Math.Ceiling((double)reader.GetInt32(0) / (double)pageSize);
                reader.NextResult();
                return CBO.FillCollection<DatBan>(reader);
            }
            catch
            {
                if (reader != null && reader.IsClosed == false)
                    reader.Close();
                howManyPages = 0;
                return new List<DatBan>();
            }
        }
        public static List<DatBan> LayTheoTrangThai(string trangThai, string page, out int howManyPages)
        {
            IDataReader reader = null;
            try
            {
                int pageSize = GlobalConfiguration.PageSize;
                reader = DataProvider.Instance.ExecuteReader("DatBan_LayTheoTrangThai", ConvertType.ToInt32(trangThai), GlobalConfiguration.DescriptionLength, page, GlobalConfiguration.PageSize);
                reader.Read();
                howManyPages = (int)Math.Ceiling((double)reader.GetInt32(0) / (double)pageSize);
                reader.NextResult();
                return CBO.FillCollection<DatBan>(reader);
            }
            catch
            {
                if (reader != null && reader.IsClosed == false)
                    reader.Close();
                howManyPages = 0;
                return new List<DatBan>();
            }
        }
        #endregion

    }
}
