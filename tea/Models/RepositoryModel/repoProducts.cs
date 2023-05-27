using Dapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using tea.Models;

/// <summary>
/// Products CRUD
/// </summary>
public class z_repoProducts : BaseClass
{
    #region 建構子及 CRUD
    /// <summary>
    /// Repository 變數
    /// <summary>
    public IEFGenericRepository<Products> repo;
    /// <summary>
    /// 建構子
    /// <summary>
    public z_repoProducts()
    {
        repo = new EFGenericRepository<Products>(new dbEntities());
    }

    /// <summary>
    /// 取得商品首頁資料
    /// </summary>
    /// <param name="page">頁數</param>
    /// <param name="pageSize">每頁筆數</param>
    /// <returns></returns>
    public List<Products> GetShopProdList(int page, int pageSize)
    {
        int int_low = ShopService.PriceLow;
        int int_high = ShopService.PriceHigh;
        var prodModel = repo.ReadAll(m => m.SalePrice >= int_low && m.SalePrice <= int_high).ToList();
        if (string.IsNullOrEmpty(ShopService.SearchText))
        {
            if (!string.IsNullOrEmpty(ShopService.CategoryNo))
            {
                prodModel = prodModel.Where(m => m.CategoryNo == ShopService.CategoryNo).ToList();
            }
        }
        if (!string.IsNullOrEmpty(ShopService.SearchText))
        {
            prodModel = prodModel.Where(m =>
            m.ProdNo.Contains(ShopService.SearchText) ||
            m.ProdName.Contains(ShopService.SearchText)
            ).ToList();
        }
        if (ShopService.SortNo == "NameAsc") prodModel = prodModel.OrderBy(m => m.ProdName).ToList();
        if (ShopService.SortNo == "NameDesc") prodModel = prodModel.OrderByDescending(m => m.ProdName).ToList();
        if (ShopService.SortNo == "PriceAsc") prodModel = prodModel.OrderBy(m => m.SalePrice).ToList();
        if (ShopService.SortNo == "PriceDesc") prodModel = prodModel.OrderByDescending(m => m.SalePrice).ToList();

        ShopService.Page = (page == -1) ? ShopService.PriorPage() : (page == -2) ? ShopService.NextPage() : page;
        ShopService.PageSize = pageSize;
        ShopService.PageRowCount = prodModel.Count();

        prodModel = prodModel.Skip((page - 1) * pageSize).Take(pageSize).ToList();
        return prodModel;
    }

    /// <summary>
    /// 以 Dapper 來讀取資料集合
    /// <summary>
    /// <param name="searchText">查詢條件</param>
    /// <returns></returns>
    public List<Products> GetDapperDataList(string searchText)
    {
        using (DapperRepository dp = new DapperRepository())
        {
            string str_query = GetSQLSelect();
            str_query += GetSQLWhere(searchText);
            str_query += GetSQLOrderBy();
            //DynamicParameters parm = new DynamicParameters();
            //parm.Add("parmName", "parmValue");
            var model = dp.ReadAll<Products>(str_query);
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
SELECT Products.Id, Products.IsEnabled, Products.IsInventory,Products.IsShowPhoto,
Products.BrandCode, Products.ProdNo, Products.ProdName, Products.BarcodeNo, 
vi_CodeBrand.CodeName AS BrandName, Products.VendorNo, Products.MaterialCode, 
vi_CodeMaterial.CodeName AS MaterialName, Products.CategoryNo, Categorys.CategoryName, 
Products.CostPrice, Products.MarketPrice, Products.SalePrice, Products.DiscountPrice, 
Products.InventoryQty, Products.ContentText, Products.SpecificationText, Products.Remark 
FROM Products 
LEFT OUTER JOIN vi_CodeMaterial ON Products.MaterialCode = vi_CodeMaterial.CodeNo 
LEFT OUTER JOIN vi_CodeBrand ON Products.BrandCode = vi_CodeBrand.CodeNo 
LEFT OUTER JOIN Categorys ON Products.CategoryNo = Categorys.CategoryNo 
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
            str_query += $"Products.ProdNo LIKE '%{searchText}%'  OR ";
            str_query += $"Products.ProdName LIKE '%{searchText}%'  OR ";
            str_query += $"Products.BrandCode LIKE '%{searchText}%'  OR ";
            str_query += $"Products.MaterialCode LIKE '%{searchText}%'  OR ";
            str_query += $"Products.BarcodeNo LIKE '%{searchText}%'  OR ";
            str_query += $"Products.VendorNo LIKE '%{searchText}%'  OR ";
            str_query += $"Products.CategoryNo LIKE '%{searchText}%'  OR ";
            str_query += $"Categorys.CategoryName LIKE '%{searchText}%'  OR ";
            str_query += $"Products.ContentText LIKE '%{searchText}%'  OR ";
            str_query += $"Products.DetailText LIKE '%{searchText}%'  OR ";
            str_query += $"Products.Remark LIKE '%{searchText}%'  ";
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
        return " ORDER BY  Products.ProdNo";
    }
    /// <summary>
    /// 新增或修改
    /// <summary>
    /// <param name="model"></param>
    public void CreateEdit(Products model)
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
    /// 取得名稱
    /// <summary>
    /// <param name="dataNo">編號</param>
    /// <returns></returns>
    public string GetDataName(string dataNo)
    {
        string str_value = "";
        var model = repo.ReadSingle(m => m.ProdNo == dataNo);
        if (model != null) str_value = model.ProdName;
        return str_value;
    }
    /// <summary>
    /// 檢查 Id 是否存在
    /// <summary>
    /// <param name="id">Id</param>
    /// <returns></returns>
    public bool IdExists(int id)
    {
        var model = repo.ReadSingle(m => m.Id == id);
        return (model != null);
    }
    #endregion
    #region 自定義事件及函數
    /// <summary>
    /// 取得商品的銷售價格
    /// </summary>
    /// <param name="prodNo">商品編號</param>
    /// <returns></returns>
    public int GetSalePrice(string prodNo)
    {
        int int_price = 0;
        var model = repo.ReadSingle(m => m.ProdNo == prodNo);
        if (model != null)
        {
            int_price = (model.DiscountPrice > 0) ? model.DiscountPrice : model.SalePrice;
        }
        return int_price;
    }
    /// <summary>
    /// 取得商品的廠商編號
    /// </summary>
    /// <param name="prodNo">商品編號</param>
    /// <returns></returns>
    public string GetVendorNo(string prodNo)
    {
        string str_vendor_no = "";
        var model = repo.ReadSingle(m => m.ProdNo == prodNo);
        if (model != null) str_vendor_no = model.VendorNo;
        return str_vendor_no;
    }
    /// <summary>
    /// 取得商品的分類編號
    /// </summary>
    /// <param name="prodNo">商品編號</param>
    /// <returns></returns>
    public string GetCategoryNo(string prodNo)
    {
        string str_category_no = "";
        var model = repo.ReadSingle(m => m.ProdNo == prodNo);
        if (model != null) str_category_no = model.CategoryNo;
        return str_category_no;
    }
    #endregion
}
