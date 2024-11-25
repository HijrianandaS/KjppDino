using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using KjppDino.Models;

namespace KjppDino.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LandValuationController : ControllerBase
    {
        private readonly AppDbContext _context;

        public LandValuationController(AppDbContext context)
        {
            _context = context;
        }


        [HttpPost]
        public IActionResult CalculateLandValue(LandValuation model)
        {
            if (model.LandArea <= 0 || model.MarketPricePerSquareMeter <= 0)
            {
                return BadRequest("Land area and market price must be greater than 0.");
            }

            // Perhitungan
            var baseValue = model.LandArea * model.MarketPricePerSquareMeter;
            var premium = baseValue * (model.PremiumFactor / 100);
            var discount = baseValue * (model.DiscountFactor / 100);
            model.FinalValue = baseValue + premium - discount;

            // Simpan ke database
            _context.LandValuations.Add(model);
            _context.SaveChanges();

            return Ok(model);
        }

        [HttpGet]
        public IActionResult GetAllLandValuations()
        {
            var valuations = _context.LandValuations.ToList();
            return Ok(valuations);
        }

        [HttpGet("{id}")]
        public IActionResult GetLandValuationById(int id)
        {
            // Cari data berdasarkan Id
            var model = _context.LandValuations.FirstOrDefault(l => l.Id == id);
            if (model == null)
            {
                return NotFound($"LandValuation with Id = {id} not found.");
            }

            // Kembalikan data
            return Ok(model);
        }

        // PUT: api/LandValuation/{id}
        [HttpPut("{id}")]
        public IActionResult UpdateLandValuation(int id, [FromBody] LandValuation updatedModel)
        {
            // Cari data berdasarkan Id
            var existingModel = _context.LandValuations.FirstOrDefault(l => l.Id == id);
            if (existingModel == null)
            {
                return NotFound($"LandValuation with Id = {id} not found.");
            }

            // Perbarui properti
            existingModel.LandArea = updatedModel.LandArea;
            existingModel.MarketPricePerSquareMeter = updatedModel.MarketPricePerSquareMeter;
            existingModel.PremiumFactor = updatedModel.PremiumFactor;
            existingModel.DiscountFactor = updatedModel.DiscountFactor;

            // Hitung ulang nilai akhir
            var baseValue = existingModel.LandArea * existingModel.MarketPricePerSquareMeter;
            var premium = baseValue * (existingModel.PremiumFactor / 100);
            var discount = baseValue * (existingModel.DiscountFactor / 100);
            existingModel.FinalValue = baseValue + premium - discount;

            // Simpan perubahan ke database
            _context.SaveChanges();
            return Ok(existingModel);
        }

        // DELETE: api/LandValuation/{id}
        [HttpDelete("{id}")]
        public IActionResult DeleteLandValuation(int id)
        {
            // Cari data berdasarkan Id
            var model = _context.LandValuations.FirstOrDefault(l => l.Id == id);
            if (model == null)
            {
                return NotFound($"LandValuation with Id = {id} not found.");
            }

            // Hapus data dari database
            _context.LandValuations.Remove(model);
            _context.SaveChanges();
            return Ok($"LandValuation with Id = {id} has been deleted.");
        }
    }
}
