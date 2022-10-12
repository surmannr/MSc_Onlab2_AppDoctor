class Constants {
  static Uri address = Uri.parse("http://10.0.2.2:5288");

  static Uri userAddress = Uri.parse("${address.toString()}/api/User/");
  static Uri referralAddress = Uri.parse("${address.toString()}/api/Referral/");
  static Uri receiptAddress = Uri.parse("${address.toString()}/api/Receipt/");
  static Uri medicineAddress = Uri.parse("${address.toString()}/api/Medicine/");
  static Uri examinationReservationAddress =
      Uri.parse("${address.toString()}/api/ExaminationReservation/");
}
