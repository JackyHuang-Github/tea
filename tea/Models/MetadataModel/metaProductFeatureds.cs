using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace tea.Models
{
    [MetadataType(typeof(z_metaProductFeatureds))]
    public partial class ProductFeatureds
    {

    }
}

public partial class z_metaProductFeatureds
{
    public int Id { get; set; }
    public string ProdNo { get; set; }
    public string SortNo { get; set; }
    public string FeaturedName { get; set; }
    public string Remark { get; set; }
}