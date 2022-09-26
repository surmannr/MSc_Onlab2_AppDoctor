using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AppDoctorBackend.Infrastructure.Migrations
{
    public partial class Seed : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.InsertData(
                table: "AspNetRoles",
                columns: new[] { "Id", "ConcurrencyStamp", "Name", "NormalizedName" },
                values: new object[,]
                {
                    { "Doktor", "ea45e863-6fa7-44d7-9ff4-d267cd053e4e", "Doktor", "DOKTOR" },
                    { "Páciens", "d6e18b34-db0a-4293-b042-044aa3247e57", "Páciens", "PÁCIENS" }
                });

            migrationBuilder.InsertData(
                table: "AspNetUsers",
                columns: new[] { "Id", "AccessFailedCount", "Address", "BirthDate", "ConcurrencyStamp", "DeletedDate", "Email", "EmailConfirmed", "FirstName", "IsDeleted", "LastName", "LockoutEnabled", "LockoutEnd", "NamePrefix", "NormalizedEmail", "NormalizedUserName", "PasswordHash", "PhoneNumber", "PhoneNumberConfirmed", "SecurityStamp", "TwoFactorEnabled", "UserName" },
                values: new object[,]
                {
                    { "user1", 0, "Budapest I. utca", new DateTime(1997, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(182), "cfc830af-302f-44b7-a973-805e6439b2ad", null, null, true, "Adam", false, "Parker", false, null, "Dr", null, "SSTRAHAN0", "AQAAAAEAACcQAAAAEM+ktKx/JcJUi7+vxW66eZeVla6pUJtuNZ+DwD0qSs1GvV3tbPwLpPPYjPds4VU9mw==", null, false, "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2", false, "sstrahan0" },
                    { "user10", 0, "Budapest I. utca", new DateTime(1993, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(343), "cfc830af-302f-44b7-a973-805e6439b2ad", null, null, true, "Jill", false, "Muze", false, null, "", null, "HFILINKOV9", "AQAAAAEAACcQAAAAEIQhxWxFvRgkeSCFXc1MsA9onNiN/8MNlD/r7b8LjXzIQ2qgHYDUsQ1VY1vTm8k99w==", null, false, "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2", false, "hfilinkov9" },
                    { "user2", 0, "Budapest I. utca", new DateTime(1995, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(226), "cfc830af-302f-44b7-a973-805e6439b2ad", null, null, true, "John", false, "Hollow", false, null, "Dr", null, "LTIPPIN1", "AQAAAAEAACcQAAAAEIqvdzH+5EXwv26f5O+nFXB/zKqYiZmuyFOOyS37oO5221s9fIpUvopHWK98tHG0iA==", null, false, "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2", false, "ltippin1" },
                    { "user3", 0, "Budapest I. utca", new DateTime(2000, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(282), "cfc830af-302f-44b7-a973-805e6439b2ad", null, null, true, "Kate", false, "Middleton", false, null, "", null, "BLYPTRATT2", "AQAAAAEAACcQAAAAEKGXKbaXwWn1Spw2Ozb6Payw4LwIlmo3xSQtiNysoKGkWDmDdpnnOBUbUWG90NrZdw==", null, false, "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2", false, "blyptratt2" },
                    { "user4", 0, "Budapest VI. utca", new DateTime(1967, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(290), "cfc830af-302f-44b7-a973-805e6439b2ad", null, null, true, "Gloria", false, "Namade", false, null, "", null, "JMELIOR3", "AQAAAAEAACcQAAAAEKQZbPlJ58WchBxtI8WS9aCGiqUO/DQP2DkXMdy2k7B5ReKnAQpSM1g6sbFezaz4eQ==", null, false, "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2", false, "jmelior3" },
                    { "user5", 0, "Budapest II. utca", new DateTime(1989, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(298), "cfc830af-302f-44b7-a973-805e6439b2ad", null, null, true, "Blake", false, "Riverdome", false, null, "", null, "TMAXWORTHY4", "AQAAAAEAACcQAAAAELWBAoD/vZwpdb8Uw4oOXRSjWPJrScFSCQeSQjikD3A4uKdLWWn0JXHUyM+ZGF796A==", null, false, "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2", false, "tmaxworthy4" },
                    { "user6", 0, "Budapest XI. utca", new DateTime(2000, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(308), "cfc830af-302f-44b7-a973-805e6439b2ad", null, null, true, "Olivia", false, "Woodburry", false, null, "", null, "HCHEVERELL5", "AQAAAAEAACcQAAAAELH8aGbEfm9uzyDrnBUqER34a3pjXX1kTARmW+PR/73YLP3mfNgl/xSu9XSe/67ZJQ==", null, false, "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2", false, "hcheverell5" },
                    { "user7", 0, "Budapest V. utca", new DateTime(1993, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(317), "cfc830af-302f-44b7-a973-805e6439b2ad", null, null, true, "Carl", false, "Scottom", false, null, "", null, "GBOSKELL6", "AQAAAAEAACcQAAAAEM3u9J7ED78wiaIJMr7b6Fi57335m+a88+v0kVXJchQMG7n8TkCZ7WACUPc23j1jfg==", null, false, "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2", false, "gboskell6" },
                    { "user8", 0, "Budapest VII. utca", new DateTime(1995, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(328), "cfc830af-302f-44b7-a973-805e6439b2ad", null, null, true, "Ariel", false, "Summer", false, null, "", null, "ERYLETT7", "AQAAAAEAACcQAAAAEIzRSS3nWeqJKmOlvoaePYifR9sWu4y6gdT3fG3SmtqSvSXGVXRRVacWGsJctfe38g==", null, false, "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2", false, "erylett7" },
                    { "user9", 0, "Budapest III. utca", new DateTime(1996, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(336), "cfc830af-302f-44b7-a973-805e6439b2ad", null, null, true, "Sophie", false, "Mundara", false, null, "", null, "KSEELY8", "AQAAAAEAACcQAAAAEIGktKr7dzBwxmxeKge5FZ/QJfUEiF/ikYgnksxTKziulPUQ90lzWTVZTjI+GAng/g==", null, false, "RD6YLKPIHDS7MMSLGQ3O7DF5ZNR73XJ2", false, "kseely8" }
                });

            migrationBuilder.InsertData(
                table: "Medicines",
                columns: new[] { "Id", "DeletedDate", "DiseasesGoodFor", "InStock", "IsDeleted", "Name" },
                values: new object[,]
                {
                    { 1, null, 200, 300, false, "ALPHAMUNO" },
                    { 2, null, 65568, 230, false, "BETATEMO" },
                    { 3, null, 0, 255, false, "GAMMADIN" },
                    { 4, null, 40962, 320, false, "DELTATOM" },
                    { 5, null, 131073, 265, false, "EPSICOMMA" },
                    { 6, null, 262144, 294, false, "ZETARA" },
                    { 7, null, 294913, 300, false, "XEMORPH" },
                    { 8, null, 128, 230, false, "IKSZEM" },
                    { 9, null, 256, 255, false, "GIMMADON" },
                    { 10, null, 20496, 320, false, "REMADDIN" },
                    { 11, null, 2560, 265, false, "LUMPA" },
                    { 12, null, 1024, 294, false, "JOTIRSO" }
                });

            migrationBuilder.InsertData(
                table: "AspNetUserRoles",
                columns: new[] { "RoleId", "UserId" },
                values: new object[,]
                {
                    { "Doktor", "user1" },
                    { "Páciens", "user10" },
                    { "Doktor", "user2" },
                    { "Páciens", "user3" },
                    { "Páciens", "user4" },
                    { "Páciens", "user5" },
                    { "Páciens", "user6" },
                    { "Páciens", "user7" },
                    { "Páciens", "user8" },
                    { "Páciens", "user9" }
                });

            migrationBuilder.InsertData(
                table: "ExaminationReservations",
                columns: new[] { "Id", "DateFrom", "DateTo", "DeletedDate", "DoctorId", "IsAccepted", "IsDeleted", "IsResolved", "PatientId", "PatientProblem" },
                values: new object[,]
                {
                    { new Guid("0470b23c-f65d-4f1a-96c9-5b9aac6dee5b"), new DateTime(2022, 10, 10, 10, 41, 30, 159, DateTimeKind.Local).AddTicks(8519), new DateTime(2022, 10, 10, 11, 41, 30, 159, DateTimeKind.Local).AddTicks(8521), null, "user1", false, false, false, "user6", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate nunc eget erat venenatis, non lobortis arcu lacinia. Suspendisse faucibus sagittis magna, in rhoncus eros ultrices eget. Nullam vitae nulla eu lorem tempus placerat." },
                    { new Guid("af378505-14cb-4f49-1111-ba2c8fdef77d"), new DateTime(2022, 9, 21, 10, 41, 30, 159, DateTimeKind.Local).AddTicks(8511), new DateTime(2022, 9, 21, 13, 41, 30, 159, DateTimeKind.Local).AddTicks(8513), null, "user2", true, false, true, "user8", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate nunc eget erat venenatis, non lobortis arcu lacinia. Suspendisse faucibus sagittis magna, in rhoncus eros ultrices eget. Nullam vitae nulla eu lorem tempus placerat." },
                    { new Guid("bcd1dac9-b087-412c-ba8c-1b456a5e7c20"), new DateTime(2022, 10, 3, 10, 41, 30, 159, DateTimeKind.Local).AddTicks(8470), new DateTime(2022, 10, 3, 12, 41, 30, 159, DateTimeKind.Local).AddTicks(8494), null, "user1", true, false, false, "user4", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate nunc eget erat venenatis, non lobortis arcu lacinia. Suspendisse faucibus sagittis magna, in rhoncus eros ultrices eget. Nullam vitae nulla eu lorem tempus placerat." }
                });

            migrationBuilder.InsertData(
                table: "Receipts",
                columns: new[] { "Id", "Date", "DeletedDate", "DoctorId", "IsDeleted", "PatientId" },
                values: new object[,]
                {
                    { new Guid("2141e417-4a7a-4620-be37-3e6f354d9187"), new DateTime(2022, 9, 16, 10, 41, 30, 159, DateTimeKind.Local).AddTicks(8692), null, "user1", false, "user5" },
                    { new Guid("4a08aa1f-1b57-417f-8be5-4cc22576c0fc"), new DateTime(2022, 10, 3, 10, 41, 30, 159, DateTimeKind.Local).AddTicks(8685), null, "user1", false, "user4" },
                    { new Guid("4ed81b96-cec6-417b-93c3-396f73624835"), new DateTime(2022, 9, 29, 10, 41, 30, 159, DateTimeKind.Local).AddTicks(8689), null, "user2", false, "user8" }
                });

            migrationBuilder.InsertData(
                table: "ReceiptMedicines",
                columns: new[] { "MedicineId", "ReceiptId", "DeletedDate", "IsDeleted", "Quantity" },
                values: new object[,]
                {
                    { 8, new Guid("2141e417-4a7a-4620-be37-3e6f354d9187"), null, false, 10 },
                    { 5, new Guid("4a08aa1f-1b57-417f-8be5-4cc22576c0fc"), null, false, 1 },
                    { 10, new Guid("4a08aa1f-1b57-417f-8be5-4cc22576c0fc"), null, false, 2 },
                    { 1, new Guid("4ed81b96-cec6-417b-93c3-396f73624835"), null, false, 3 },
                    { 3, new Guid("4ed81b96-cec6-417b-93c3-396f73624835"), null, false, 2 },
                    { 5, new Guid("4ed81b96-cec6-417b-93c3-396f73624835"), null, false, 1 }
                });

            migrationBuilder.InsertData(
                table: "Referrals",
                columns: new[] { "Id", "DeletedDate", "Diagnoses", "DoctorId", "ExaminationReservationId", "IsDeleted", "PatientId" },
                values: new object[] { new Guid("3a74a397-4ec7-4d20-9c5e-2b91eed078bf"), null, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate nunc eget erat venenatis, non lobortis arcu lacinia. Suspendisse faucibus sagittis magna, in rhoncus eros ultrices eget. Nullam vitae nulla eu lorem tempus placerat.", "user2", new Guid("af378505-14cb-4f49-1111-ba2c8fdef77d"), false, "user8" });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "AspNetUserRoles",
                keyColumns: new[] { "RoleId", "UserId" },
                keyValues: new object[] { "Doktor", "user1" });

            migrationBuilder.DeleteData(
                table: "AspNetUserRoles",
                keyColumns: new[] { "RoleId", "UserId" },
                keyValues: new object[] { "Páciens", "user10" });

            migrationBuilder.DeleteData(
                table: "AspNetUserRoles",
                keyColumns: new[] { "RoleId", "UserId" },
                keyValues: new object[] { "Doktor", "user2" });

            migrationBuilder.DeleteData(
                table: "AspNetUserRoles",
                keyColumns: new[] { "RoleId", "UserId" },
                keyValues: new object[] { "Páciens", "user3" });

            migrationBuilder.DeleteData(
                table: "AspNetUserRoles",
                keyColumns: new[] { "RoleId", "UserId" },
                keyValues: new object[] { "Páciens", "user4" });

            migrationBuilder.DeleteData(
                table: "AspNetUserRoles",
                keyColumns: new[] { "RoleId", "UserId" },
                keyValues: new object[] { "Páciens", "user5" });

            migrationBuilder.DeleteData(
                table: "AspNetUserRoles",
                keyColumns: new[] { "RoleId", "UserId" },
                keyValues: new object[] { "Páciens", "user6" });

            migrationBuilder.DeleteData(
                table: "AspNetUserRoles",
                keyColumns: new[] { "RoleId", "UserId" },
                keyValues: new object[] { "Páciens", "user7" });

            migrationBuilder.DeleteData(
                table: "AspNetUserRoles",
                keyColumns: new[] { "RoleId", "UserId" },
                keyValues: new object[] { "Páciens", "user8" });

            migrationBuilder.DeleteData(
                table: "AspNetUserRoles",
                keyColumns: new[] { "RoleId", "UserId" },
                keyValues: new object[] { "Páciens", "user9" });

            migrationBuilder.DeleteData(
                table: "ExaminationReservations",
                keyColumn: "Id",
                keyValue: new Guid("0470b23c-f65d-4f1a-96c9-5b9aac6dee5b"));

            migrationBuilder.DeleteData(
                table: "ExaminationReservations",
                keyColumn: "Id",
                keyValue: new Guid("bcd1dac9-b087-412c-ba8c-1b456a5e7c20"));

            migrationBuilder.DeleteData(
                table: "Medicines",
                keyColumn: "Id",
                keyValue: 2);

            migrationBuilder.DeleteData(
                table: "Medicines",
                keyColumn: "Id",
                keyValue: 4);

            migrationBuilder.DeleteData(
                table: "Medicines",
                keyColumn: "Id",
                keyValue: 6);

            migrationBuilder.DeleteData(
                table: "Medicines",
                keyColumn: "Id",
                keyValue: 7);

            migrationBuilder.DeleteData(
                table: "Medicines",
                keyColumn: "Id",
                keyValue: 9);

            migrationBuilder.DeleteData(
                table: "Medicines",
                keyColumn: "Id",
                keyValue: 11);

            migrationBuilder.DeleteData(
                table: "Medicines",
                keyColumn: "Id",
                keyValue: 12);

            migrationBuilder.DeleteData(
                table: "ReceiptMedicines",
                keyColumns: new[] { "MedicineId", "ReceiptId" },
                keyValues: new object[] { 8, new Guid("2141e417-4a7a-4620-be37-3e6f354d9187") });

            migrationBuilder.DeleteData(
                table: "ReceiptMedicines",
                keyColumns: new[] { "MedicineId", "ReceiptId" },
                keyValues: new object[] { 5, new Guid("4a08aa1f-1b57-417f-8be5-4cc22576c0fc") });

            migrationBuilder.DeleteData(
                table: "ReceiptMedicines",
                keyColumns: new[] { "MedicineId", "ReceiptId" },
                keyValues: new object[] { 10, new Guid("4a08aa1f-1b57-417f-8be5-4cc22576c0fc") });

            migrationBuilder.DeleteData(
                table: "ReceiptMedicines",
                keyColumns: new[] { "MedicineId", "ReceiptId" },
                keyValues: new object[] { 1, new Guid("4ed81b96-cec6-417b-93c3-396f73624835") });

            migrationBuilder.DeleteData(
                table: "ReceiptMedicines",
                keyColumns: new[] { "MedicineId", "ReceiptId" },
                keyValues: new object[] { 3, new Guid("4ed81b96-cec6-417b-93c3-396f73624835") });

            migrationBuilder.DeleteData(
                table: "ReceiptMedicines",
                keyColumns: new[] { "MedicineId", "ReceiptId" },
                keyValues: new object[] { 5, new Guid("4ed81b96-cec6-417b-93c3-396f73624835") });

            migrationBuilder.DeleteData(
                table: "Referrals",
                keyColumn: "Id",
                keyValue: new Guid("3a74a397-4ec7-4d20-9c5e-2b91eed078bf"));

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "Doktor");

            migrationBuilder.DeleteData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "Páciens");

            migrationBuilder.DeleteData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user10");

            migrationBuilder.DeleteData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user3");

            migrationBuilder.DeleteData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user6");

            migrationBuilder.DeleteData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user7");

            migrationBuilder.DeleteData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user9");

            migrationBuilder.DeleteData(
                table: "ExaminationReservations",
                keyColumn: "Id",
                keyValue: new Guid("af378505-14cb-4f49-1111-ba2c8fdef77d"));

            migrationBuilder.DeleteData(
                table: "Medicines",
                keyColumn: "Id",
                keyValue: 1);

            migrationBuilder.DeleteData(
                table: "Medicines",
                keyColumn: "Id",
                keyValue: 3);

            migrationBuilder.DeleteData(
                table: "Medicines",
                keyColumn: "Id",
                keyValue: 5);

            migrationBuilder.DeleteData(
                table: "Medicines",
                keyColumn: "Id",
                keyValue: 8);

            migrationBuilder.DeleteData(
                table: "Medicines",
                keyColumn: "Id",
                keyValue: 10);

            migrationBuilder.DeleteData(
                table: "Receipts",
                keyColumn: "Id",
                keyValue: new Guid("2141e417-4a7a-4620-be37-3e6f354d9187"));

            migrationBuilder.DeleteData(
                table: "Receipts",
                keyColumn: "Id",
                keyValue: new Guid("4a08aa1f-1b57-417f-8be5-4cc22576c0fc"));

            migrationBuilder.DeleteData(
                table: "Receipts",
                keyColumn: "Id",
                keyValue: new Guid("4ed81b96-cec6-417b-93c3-396f73624835"));

            migrationBuilder.DeleteData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user1");

            migrationBuilder.DeleteData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user2");

            migrationBuilder.DeleteData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user4");

            migrationBuilder.DeleteData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user5");

            migrationBuilder.DeleteData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user8");
        }
    }
}
