namespace KjppDino.Models
{
    public class LandValuation
    {
        public int Id { get; set; }
        public double LandArea { get; set; } // Luas tanah (m2)
        public double MarketPricePerSquareMeter { get; set; } // Harga pasar per m2 (Rp)
        public double PremiumFactor { get; set; } // Faktor premium (%)
        public double DiscountFactor { get; set; } // Faktor diskon (%)
        public double FinalValue { get; set; } // Nilai akhir (Rp)
    }
}
