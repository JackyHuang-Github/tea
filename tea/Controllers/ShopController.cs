using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace tea.Controllers
{
    /// <summary>
    /// ShopController
    /// </summary>
    public class ShopController : BaseController
    {
        public ActionResult Index(int page = 1, int pageSize = 12)
        {
            using (z_repoProducts prod = new z_repoProducts())
            {
                using (z_repoCategorys cate = new z_repoCategorys())
                {
                    ShopService.PageCount = 10;
                    vmShopIndex model = new vmShopIndex();
                    model.ProdList = prod.GetShopProdList(page, pageSize);
                    model.CategoryList = cate.GetShopCategoryList();
                    return View(model);
                }
            }
        }
        /// <summary>
        /// 商品排序
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult Sort(string id)
        {
            ShopService.SortNo = id;
            return RedirectToAction("Index", "Shop", new { area = "" });
        }
        /// <summary>
        /// 商品分類
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult Category(string id)
        {
            ShopService.CategoryNo = id;
            ShopService.SearchText = "";
            return RedirectToAction("Index", "Shop", new { area = "" });
        }
        /// <summary>
        /// 商品搜尋
        /// </summary>
        /// <param name="formCollection"></param>
        /// <returns></returns>
        public ActionResult Search(FormCollection formCollection)
        {
            ShopService.CategoryNo = "";
            object obj_text = formCollection["SearchText"];
            string str_text = (obj_text == null) ? "" : obj_text.ToString();
            ShopService.SearchText = str_text;
            return RedirectToAction("Index", "Shop", new { area = "" });
        }
        /// <summary>
        /// 價格區間
        /// </summary>
        /// <param name="formCollection"></param>
        /// <returns></returns>
        public ActionResult Price(FormCollection formCollection)
        {
            int int_low = 0;
            int int_high = 0;
            object obj_low = formCollection["price_low"];
            object obj_high = formCollection["price_high"];
            string str_low = (obj_low == null) ? "0" : obj_low.ToString();
            string str_high = (obj_high == null) ? "99999" : obj_high.ToString();
            int.TryParse(str_low, out int_low);
            int.TryParse(str_high, out int_high);
            ShopService.PriceLow = int_low;
            ShopService.PriceHigh = int_high;
            return RedirectToAction("Index", "Shop", new { area = "" });
        }

        //Jacky 1120613
        /// <summary>
        /// 商品明細
        /// </summary>
        /// <param name="id">商品編號</param>
        /// <returns></returns>
        public ActionResult Detail(string id)
        {
            using (z_repoDrinks prod = new z_repoDrinks())
            {
                var model = prod.repo.ReadSingle(m => m.CodeNo == id);
                return View(model);
            }
        }
        /// <summary>
        /// 加入購物車
        /// </summary>
        /// <param name="model">Books Model</param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult AddToCart(FormCollection collection)
        {
            string str_prod_no = collection["ProdNo"];
            string str_qty = collection["Quantity"];
            int int_qty = 1;
            int.TryParse(str_qty, out int_qty);
            CartService.AddCart(str_prod_no, int_qty);
            return RedirectToAction("Cart", "Shop", new { area = "" });
        }
        /// <summary>
        /// 更新購物車
        /// </summary>
        /// <param name="collection"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult UpdateCart(FormCollection collection)
        {
            int int_rowid = 0;
            int int_qty = 0;
            for (int i = 1; i < collection.Count; i += 2)
            {
                int_rowid = int.Parse(collection[i].ToString());
                int_qty = int.Parse(collection[i + 1].ToString());
                CartService.UpdateCart(int_rowid, int_qty);
            }
            return RedirectToAction("Cart", "Shop", new { area = "" });
        }
        /// <summary>
        /// 刪除購物車
        /// </summary>
        /// <param name="id">row ID</param>
        /// <returns></returns>
        public ActionResult DeleteCart(int id)
        {
            CartService.DeleteCart(id);
            return RedirectToAction("Cart", "Shop", new { area = "" });
        }
        /// <summary>
        /// 購物車
        /// </summary>
        /// <returns></returns>
        public ActionResult Cart()
        {
            using (z_repoCarts carts = new z_repoCarts())
            {
                if (UserService.IsLogin)
                {
                    var data1 = carts.repo.ReadAll(m => m.MemberNo == UserService.UserNo);
                    return View(data1);
                }
                var data2 = carts.repo.ReadAll(m => m.LotNo == CartService.LotNo);
                return View(data2);
            }
        }
        /// <summary>
        /// 結帳付款
        /// </summary>
        /// <returns></returns>
        public ActionResult Payment()
        {
            if (!UserService.IsLogin) return RedirectToAction("Login", "Web", new { area = "" });
            if (CartService.Counts <= 0) return RedirectToAction("Index", "Shop", new { area = "" });

            using (z_repoPayments payments = new z_repoPayments())
            {
                using (z_repoShippings shippings = new z_repoShippings())
                {
                    using (z_repoCarts carts = new z_repoCarts())
                    {
                        vmOrders models = new vmOrders()
                        {
                            receive_name = "",
                            receive_email = "",
                            receive_address = "",
                            payment_no = "ATM",
                            shipping_no = "Delivery",
                            remark = "",
                            PaymentsList = payments.PaymentsList(),
                            ShippingsList = shippings.ShippingsList(),
                            CartsList = carts.CartList()
                        };
                        return View(models);
                    }
                }
            }
        }
        /// <summary>
        /// 結帳付款成訂單
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Payment(vmOrders model)
        {
            if (!ModelState.IsValid)
            {
                using (z_repoPayments payments = new z_repoPayments())
                {
                    using (z_repoShippings shippings = new z_repoShippings())
                    {
                        using (z_repoCarts carts = new z_repoCarts())
                        {
                            if (model.PaymentsList == null) model.PaymentsList = payments.PaymentsList();
                            if (model.ShippingsList == null) model.ShippingsList = shippings.ShippingsList();
                            if (model.CartsList == null) model.CartsList = carts.CartList();
                            return View(model);
                        }
                    }
                }
            }
            CartService.CartPayment(model);
            CartService.ClearCart();
            return Redirect("~/ECPayment.aspx");
        }

        public ActionResult PaymentReturnt()
        {
            return View();
        }

        public ActionResult OrderResult()
        {
            return View();
        }

        public ActionResult ProductDetail()
        {
            return View();
        }
    }
}