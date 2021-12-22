import 'dart:developer';

const kGPackageName = "id.nesd.my_food";
const kGAppName = "MyFood";
const kGAppTagLine = "Mobile Developer Assignment Test for Sinarmas MSIG";
const kGVersionName = "1.0.0";
const kGVersionCode = 1;

String kGLogTag = "[$kGAppName]";
const kGLogEnable = true;

void printLog(dynamic data) {
  if (kGLogEnable) {
    log("[${DateTime.now().toUtc()}]$kGLogTag$data");
  }
}
