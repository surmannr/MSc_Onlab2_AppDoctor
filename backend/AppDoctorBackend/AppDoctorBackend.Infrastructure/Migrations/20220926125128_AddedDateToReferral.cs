using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AppDoctorBackend.Infrastructure.Migrations
{
    public partial class AddedDateToReferral : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "ExaminationReservations",
                keyColumn: "Id",
                keyValue: new Guid("0470b23c-f65d-4f1a-96c9-5b9aac6dee5b"));

            migrationBuilder.DeleteData(
                table: "ExaminationReservations",
                keyColumn: "Id",
                keyValue: new Guid("bcd1dac9-b087-412c-ba8c-1b456a5e7c20"));

            migrationBuilder.DeleteData(
                table: "Referrals",
                keyColumn: "Id",
                keyValue: new Guid("3a74a397-4ec7-4d20-9c5e-2b91eed078bf"));

            migrationBuilder.AddColumn<DateTime>(
                name: "ExaminationDate",
                table: "Referrals",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "Doktor",
                column: "ConcurrencyStamp",
                value: "6cc98a1b-384c-46eb-a544-fb7020a6ad22");

            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "Páciens",
                column: "ConcurrencyStamp",
                value: "5af48b90-1579-49da-b6da-e2fd3a313b7d");

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user1",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1997, 9, 26, 14, 51, 27, 949, DateTimeKind.Local).AddTicks(5264), "AQAAAAEAACcQAAAAEDrXziN1OLKNZrNRmkbR+cLINVAThwJM0JUNCTSbxAskJw+Hl7aJwbLvAu7+mJPq0A==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user10",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1993, 9, 26, 14, 51, 27, 949, DateTimeKind.Local).AddTicks(5406), "AQAAAAEAACcQAAAAEKTKMu1k+JYwFhJshVR+Fzml6xZ6/RIJj1R2DBA/+9jx3kUZVtNZ1eGBBjIwBmbbPg==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user2",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1995, 9, 26, 14, 51, 27, 949, DateTimeKind.Local).AddTicks(5309), "AQAAAAEAACcQAAAAEJaY7jR1pa6HWpXmQrtBc1oqx+/Hilwb5W6+PtRBEIFT0RoTncqi1TnY1KG86T0yHA==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user3",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(2000, 9, 26, 14, 51, 27, 949, DateTimeKind.Local).AddTicks(5319), "AQAAAAEAACcQAAAAEANK4WlRXv4iQPHHiggx/VTVGHpIvpEu3hsxPtvHYHuno4LpDdSWkfdy5HDlIsbpUQ==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user4",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1967, 9, 26, 14, 51, 27, 949, DateTimeKind.Local).AddTicks(5328), "AQAAAAEAACcQAAAAEDYIkKQv5igl8FtbvtJ96upUn0doNsW99Td5RskJ2/0U4etPoynj0rFv1ubJ93jvTg==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user5",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1989, 9, 26, 14, 51, 27, 949, DateTimeKind.Local).AddTicks(5336), "AQAAAAEAACcQAAAAEPwmHbWay48IB2x7yknX3xS2G1QWqGQR1C8g0fm0oOExaO5R6WnPunvkbJBEAe9Qbg==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user6",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(2000, 9, 26, 14, 51, 27, 949, DateTimeKind.Local).AddTicks(5373), "AQAAAAEAACcQAAAAEHerT1Z7aii5rU2AlMxVs5RdS7hZDu7M59Oyy5lkEdlXkZU6OxoOwZjNV7YwQwirQA==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user7",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1993, 9, 26, 14, 51, 27, 949, DateTimeKind.Local).AddTicks(5382), "AQAAAAEAACcQAAAAEMWjVZsBxGFWZ8JScx4ZjOOjUMUnxckLaunKVDBjweYmhY/s0gr7IXfYjjiSywKiug==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user8",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1995, 9, 26, 14, 51, 27, 949, DateTimeKind.Local).AddTicks(5389), "AQAAAAEAACcQAAAAEKir1y0cC6WUuwjgSrpfUh+KsrDore7EVHOEotYWLrWBckyrW0cPMhHa/sgGSQu4qQ==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user9",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1996, 9, 26, 14, 51, 27, 949, DateTimeKind.Local).AddTicks(5398), "AQAAAAEAACcQAAAAEPElEHruOsNZYlyxmvwIKIPGmEJ9l0iC0zQqpQzUN1MNmuIbjRaVI40oOurqeUdn+w==" });

            migrationBuilder.UpdateData(
                table: "ExaminationReservations",
                keyColumn: "Id",
                keyValue: new Guid("af378505-14cb-4f49-1111-ba2c8fdef77d"),
                columns: new[] { "DateFrom", "DateTo" },
                values: new object[] { new DateTime(2022, 9, 21, 14, 51, 27, 960, DateTimeKind.Local).AddTicks(4889), new DateTime(2022, 9, 21, 17, 51, 27, 960, DateTimeKind.Local).AddTicks(4891) });

            migrationBuilder.InsertData(
                table: "ExaminationReservations",
                columns: new[] { "Id", "DateFrom", "DateTo", "DeletedDate", "DoctorId", "IsAccepted", "IsDeleted", "IsResolved", "PatientId", "PatientProblem" },
                values: new object[,]
                {
                    { new Guid("384c9953-4047-481d-a0b9-c70a30c5b491"), new DateTime(2022, 10, 10, 14, 51, 27, 960, DateTimeKind.Local).AddTicks(4894), new DateTime(2022, 10, 10, 15, 51, 27, 960, DateTimeKind.Local).AddTicks(4896), null, "user1", false, false, false, "user6", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate nunc eget erat venenatis, non lobortis arcu lacinia. Suspendisse faucibus sagittis magna, in rhoncus eros ultrices eget. Nullam vitae nulla eu lorem tempus placerat." },
                    { new Guid("3c14115a-62d1-4499-a464-d7d1dd2ea1ea"), new DateTime(2022, 10, 3, 14, 51, 27, 960, DateTimeKind.Local).AddTicks(4863), new DateTime(2022, 10, 3, 16, 51, 27, 960, DateTimeKind.Local).AddTicks(4873), null, "user1", true, false, false, "user4", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate nunc eget erat venenatis, non lobortis arcu lacinia. Suspendisse faucibus sagittis magna, in rhoncus eros ultrices eget. Nullam vitae nulla eu lorem tempus placerat." }
                });

            migrationBuilder.UpdateData(
                table: "Receipts",
                keyColumn: "Id",
                keyValue: new Guid("2141e417-4a7a-4620-be37-3e6f354d9187"),
                column: "Date",
                value: new DateTime(2022, 9, 16, 14, 51, 27, 960, DateTimeKind.Local).AddTicks(5081));

            migrationBuilder.UpdateData(
                table: "Receipts",
                keyColumn: "Id",
                keyValue: new Guid("4a08aa1f-1b57-417f-8be5-4cc22576c0fc"),
                column: "Date",
                value: new DateTime(2022, 10, 3, 14, 51, 27, 960, DateTimeKind.Local).AddTicks(5074));

            migrationBuilder.UpdateData(
                table: "Receipts",
                keyColumn: "Id",
                keyValue: new Guid("4ed81b96-cec6-417b-93c3-396f73624835"),
                column: "Date",
                value: new DateTime(2022, 9, 29, 14, 51, 27, 960, DateTimeKind.Local).AddTicks(5079));

            migrationBuilder.InsertData(
                table: "Referrals",
                columns: new[] { "Id", "DeletedDate", "Diagnoses", "DoctorId", "ExaminationDate", "ExaminationReservationId", "IsDeleted", "PatientId" },
                values: new object[] { new Guid("a46e1c84-8056-4c5e-a1ee-124eaadd193d"), null, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate nunc eget erat venenatis, non lobortis arcu lacinia. Suspendisse faucibus sagittis magna, in rhoncus eros ultrices eget. Nullam vitae nulla eu lorem tempus placerat.", "user2", new DateTime(2022, 10, 2, 14, 51, 27, 960, DateTimeKind.Local).AddTicks(4980), new Guid("af378505-14cb-4f49-1111-ba2c8fdef77d"), false, "user8" });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "ExaminationReservations",
                keyColumn: "Id",
                keyValue: new Guid("384c9953-4047-481d-a0b9-c70a30c5b491"));

            migrationBuilder.DeleteData(
                table: "ExaminationReservations",
                keyColumn: "Id",
                keyValue: new Guid("3c14115a-62d1-4499-a464-d7d1dd2ea1ea"));

            migrationBuilder.DeleteData(
                table: "Referrals",
                keyColumn: "Id",
                keyValue: new Guid("a46e1c84-8056-4c5e-a1ee-124eaadd193d"));

            migrationBuilder.DropColumn(
                name: "ExaminationDate",
                table: "Referrals");

            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "Doktor",
                column: "ConcurrencyStamp",
                value: "ea45e863-6fa7-44d7-9ff4-d267cd053e4e");

            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "Páciens",
                column: "ConcurrencyStamp",
                value: "d6e18b34-db0a-4293-b042-044aa3247e57");

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user1",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1997, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(182), "AQAAAAEAACcQAAAAEM+ktKx/JcJUi7+vxW66eZeVla6pUJtuNZ+DwD0qSs1GvV3tbPwLpPPYjPds4VU9mw==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user10",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1993, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(343), "AQAAAAEAACcQAAAAEIQhxWxFvRgkeSCFXc1MsA9onNiN/8MNlD/r7b8LjXzIQ2qgHYDUsQ1VY1vTm8k99w==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user2",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1995, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(226), "AQAAAAEAACcQAAAAEIqvdzH+5EXwv26f5O+nFXB/zKqYiZmuyFOOyS37oO5221s9fIpUvopHWK98tHG0iA==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user3",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(2000, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(282), "AQAAAAEAACcQAAAAEKGXKbaXwWn1Spw2Ozb6Payw4LwIlmo3xSQtiNysoKGkWDmDdpnnOBUbUWG90NrZdw==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user4",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1967, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(290), "AQAAAAEAACcQAAAAEKQZbPlJ58WchBxtI8WS9aCGiqUO/DQP2DkXMdy2k7B5ReKnAQpSM1g6sbFezaz4eQ==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user5",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1989, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(298), "AQAAAAEAACcQAAAAELWBAoD/vZwpdb8Uw4oOXRSjWPJrScFSCQeSQjikD3A4uKdLWWn0JXHUyM+ZGF796A==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user6",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(2000, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(308), "AQAAAAEAACcQAAAAELH8aGbEfm9uzyDrnBUqER34a3pjXX1kTARmW+PR/73YLP3mfNgl/xSu9XSe/67ZJQ==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user7",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1993, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(317), "AQAAAAEAACcQAAAAEM3u9J7ED78wiaIJMr7b6Fi57335m+a88+v0kVXJchQMG7n8TkCZ7WACUPc23j1jfg==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user8",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1995, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(328), "AQAAAAEAACcQAAAAEIzRSS3nWeqJKmOlvoaePYifR9sWu4y6gdT3fG3SmtqSvSXGVXRRVacWGsJctfe38g==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "user9",
                columns: new[] { "BirthDate", "PasswordHash" },
                values: new object[] { new DateTime(1996, 9, 26, 10, 41, 30, 149, DateTimeKind.Local).AddTicks(336), "AQAAAAEAACcQAAAAEIGktKr7dzBwxmxeKge5FZ/QJfUEiF/ikYgnksxTKziulPUQ90lzWTVZTjI+GAng/g==" });

            migrationBuilder.UpdateData(
                table: "ExaminationReservations",
                keyColumn: "Id",
                keyValue: new Guid("af378505-14cb-4f49-1111-ba2c8fdef77d"),
                columns: new[] { "DateFrom", "DateTo" },
                values: new object[] { new DateTime(2022, 9, 21, 10, 41, 30, 159, DateTimeKind.Local).AddTicks(8511), new DateTime(2022, 9, 21, 13, 41, 30, 159, DateTimeKind.Local).AddTicks(8513) });

            migrationBuilder.InsertData(
                table: "ExaminationReservations",
                columns: new[] { "Id", "DateFrom", "DateTo", "DeletedDate", "DoctorId", "IsAccepted", "IsDeleted", "IsResolved", "PatientId", "PatientProblem" },
                values: new object[,]
                {
                    { new Guid("0470b23c-f65d-4f1a-96c9-5b9aac6dee5b"), new DateTime(2022, 10, 10, 10, 41, 30, 159, DateTimeKind.Local).AddTicks(8519), new DateTime(2022, 10, 10, 11, 41, 30, 159, DateTimeKind.Local).AddTicks(8521), null, "user1", false, false, false, "user6", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate nunc eget erat venenatis, non lobortis arcu lacinia. Suspendisse faucibus sagittis magna, in rhoncus eros ultrices eget. Nullam vitae nulla eu lorem tempus placerat." },
                    { new Guid("bcd1dac9-b087-412c-ba8c-1b456a5e7c20"), new DateTime(2022, 10, 3, 10, 41, 30, 159, DateTimeKind.Local).AddTicks(8470), new DateTime(2022, 10, 3, 12, 41, 30, 159, DateTimeKind.Local).AddTicks(8494), null, "user1", true, false, false, "user4", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate nunc eget erat venenatis, non lobortis arcu lacinia. Suspendisse faucibus sagittis magna, in rhoncus eros ultrices eget. Nullam vitae nulla eu lorem tempus placerat." }
                });

            migrationBuilder.UpdateData(
                table: "Receipts",
                keyColumn: "Id",
                keyValue: new Guid("2141e417-4a7a-4620-be37-3e6f354d9187"),
                column: "Date",
                value: new DateTime(2022, 9, 16, 10, 41, 30, 159, DateTimeKind.Local).AddTicks(8692));

            migrationBuilder.UpdateData(
                table: "Receipts",
                keyColumn: "Id",
                keyValue: new Guid("4a08aa1f-1b57-417f-8be5-4cc22576c0fc"),
                column: "Date",
                value: new DateTime(2022, 10, 3, 10, 41, 30, 159, DateTimeKind.Local).AddTicks(8685));

            migrationBuilder.UpdateData(
                table: "Receipts",
                keyColumn: "Id",
                keyValue: new Guid("4ed81b96-cec6-417b-93c3-396f73624835"),
                column: "Date",
                value: new DateTime(2022, 9, 29, 10, 41, 30, 159, DateTimeKind.Local).AddTicks(8689));

            migrationBuilder.InsertData(
                table: "Referrals",
                columns: new[] { "Id", "DeletedDate", "Diagnoses", "DoctorId", "ExaminationReservationId", "IsDeleted", "PatientId" },
                values: new object[] { new Guid("3a74a397-4ec7-4d20-9c5e-2b91eed078bf"), null, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate nunc eget erat venenatis, non lobortis arcu lacinia. Suspendisse faucibus sagittis magna, in rhoncus eros ultrices eget. Nullam vitae nulla eu lorem tempus placerat.", "user2", new Guid("af378505-14cb-4f49-1111-ba2c8fdef77d"), false, "user8" });
        }
    }
}
