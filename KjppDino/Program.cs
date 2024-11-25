

using KjppDino.Models;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Tambahkan database context
builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// Add services to the container.
builder.Services.AddControllers();

builder.Services.AddCors(options =>
{
    options.AddDefaultPolicy(builder =>
    {
        builder.AllowAnyOrigin()
               .AllowAnyMethod()
               .AllowAnyHeader();
    });
});

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();/**/

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

//KALO DEPLOY PAKE SCRIPT INI

//app.UseSwagger();
//app.UseSwaggerUI(o =>
//{
//    o.SwaggerEndpoint("/swagger/v1/swagger.json", "v1"); // options added on 17-4-2023
//    o.RoutePrefix = string.Empty;
//});

/*app.UseSwagger();
app.UseSwaggerUI();*/



//IMPLEMENTASI CORS
app.UseCors(options => options
.AllowAnyOrigin()
.AllowAnyHeader()
.AllowAnyMethod());
app.UseHttpsRedirection();

app.UseAuthentication(); // Menambahkan middleware autentikasi

//Mengetahui Error
//app.UseDeveloperExceptionPage();

app.UseAuthorization();

app.MapControllers();

app.Run();
