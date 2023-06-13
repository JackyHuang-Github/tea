using Dapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using tea.Models;

/// <summary>
/// Carts CRUD
/// </summary>
public class z_repoCarts : BaseClass
{
    #region 建構子及 CRUD
    /// <summary>
    /// Repository 變數
    /// <summary>
    public IEFGenericRepository<Carts> repo;
    /// <summary>
    /// 建構子
    /// <summary>
    public z_repoCarts()
    {
        repo = new EFGenericRepository<Carts>(new dbEntities());
    }
    /// <summary>
    /// 以 Dapper 來讀取資料集合
    /// <summary>
    /// <param name="searchText">查詢條件</param>
    /// <returns></returns>
    public List<Carts> GetDapperDataList(string searchText)
    {
        using (DapperRepository dp = new DapperRepository())
        {
            string str_query = GetSQLSelect();
            str_query += GetSQLWhere(searchText);
            str_query += GetSQLOrderBy();
            //DynamicParameters parm = new DynamicParameters();
            //parm.Add("parmName", "parmValue");
            var model = dp.ReadAll<Carts>(str_query);
            return model;
        }
    }
    /// <summary>
    /// 取得 SQL 欄位及表格名稱
    /// <summary>
    /// <returns></returns>
    private string GetSQLSelect()
    {
        string str_query = @"
SELECT Id,LotNo,MemberNo,VendorNo,CategoryNo,CategoryName,ProdNo
,ProdName,ProdSpec,OrderQty,OrderPrice,OrderAmount,CreateTime,Remark
, Remark FROM Carts 
";
        return str_query;
    }
    /// <summary>
    /// 取得 SQL 條件式
    /// <summary>
    /// <param name="searchText">查詢文字</param>
    /// <returns></returns>
    private string GetSQLWhere(string searchText)
    {
        string str_query = "";
        if (!string.IsNullOrEmpty(searchText))
        {
            str_query += " WHERE (";
            str_query += $"LotNo LIKE '%{searchText}%'  OR ";
            str_query += $"MemberNo LIKE '%{searchText}%'  OR ";
            str_query += $"VendorNo LIKE '%{searchText}%'  OR ";
            str_query += $"CategoryNo LIKE '%{searchText}%'  OR ";
            str_query += $"CategoryName LIKE '%{searchText}%'  OR ";
            str_query += $"ProdNo LIKE '%{searchText}%'  OR ";
            str_query += $"ProdName LIKE '%{searchText}%'  OR ";
            str_query += $"ProdSpec LIKE '%{searchText}%'  OR ";
            str_query += $"Remark LIKE '%{searchText}%'  ";
            str_query += ") ";
        }
        return str_query;
    }
    /// <summary>
    /// 取得 SQL 排序
    /// <summary>
    /// <returns></returns>
    private string GetSQLOrderBy()
    {
        return " ORDER BY  LotNo,ProdNo";
    }
    /// <summary>
    /// 新增或修改
    /// <summary>
    /// <param name="model"></param>
    public void CreateEdit(Carts model)
    {
        repo.CreateEdit(model, model.Id);
    }
    /// <summary>
    /// 刪除
    /// <summary>
    /// <param name="id">Id</param>
    public void Delete(int id)
    {
        var model = repo.ReadSingle(m => m.Id == id);
        if (model != null) repo.Delete(model, true);
    }
    /// <summary>
    /// 檢查 Id 是否存在
    /// <summary>
    /// <param name="id">主鍵值</param>
    /// <returns></returns>
    public bool IdExists(int id)
    {
        var model = repo.ReadSingle(m => m.Id == id);
        return (model != null);
    }
    #endregion
    #region 自定義事件及函數
    public List<Carts> CartList()
    {
        return repo.ReadAll(m => m.MemberNo == UserService.UserNo).ToList();
    }

    //Jacky 1120614 增加傳入第四個參數 price
    public void AddCart(string productNo, string prod_Spec, int buyQty, int buyPrice)
    {
        using (z_repoProducts prod = new z_repoProducts())
        {
            using (z_repoCategorys cate = new z_repoCategorys())
            {
                // Jacky 改由參數傳入 price
                //int int_price = prod.GetSalePrice(productNo);
                int int_price = buyPrice;
                
                int int_amount = (buyQty * int_price);
                var datas = repo.ReadSingle(m =>
                  m.LotNo == CartService.LotNo &&
                    m.MemberNo == UserService.UserNo &&
                   m.ProdNo == productNo);

                //&&   m.product_spec == prod_Spec);

                if (datas == null)
                {
                    Carts models = new Carts();
                    models.LotNo = CartService.LotNo;
                    models.MemberNo = UserService.UserNo;
                    models.VendorNo = prod.GetVendorNo(productNo);
                    models.CategoryNo = prod.GetCategoryNo(productNo);
                    models.CategoryName = cate.GetCategoryName(models.CategoryNo);
                    models.ProdNo = productNo;
                    models.ProdName = prod.GetDataName(productNo);
                    models.ProdSpec = prod_Spec;
                    models.OrderQty = buyQty;
                    models.OrderAmount = int_amount;
                    models.OrderPrice = int_price;
                    models.CreateTime = CartService.LotCreateTime;

                    repo.Create(models);
                    repo.SaveChanges();
                }
                else
                {
                    datas.OrderQty += buyQty;
                    datas.OrderAmount = buyQty * int_price;

                    repo.Update(datas);
                    repo.SaveChanges();
                }
            }
        }
    }

    public void UpdateCart(int id, int qty)
    {
        var data = repo.ReadSingle(m => m.Id == id);
        data.OrderQty = qty;
        data.OrderAmount = qty * data.OrderPrice;
        repo.Update(data);
        repo.SaveChanges();
    }

    public void DeleteCart(int id)
    {
        var data = repo.ReadSingle(m => m.Id == id);
        if (data != null)
        {
            repo.Delete(data);
            repo.SaveChanges();
        }
    }

    /// <summary>
    /// 清除購物車
    /// </summary>
    public void ClearCart()
    {
        var datas = repo.ReadAll(m => m.MemberNo == UserService.UserNo);
        if (datas != null)
        {
            foreach (var item in datas)
            {
                repo.Delete(item);
            }
            repo.SaveChanges();
        }
    }
    #endregion
}
