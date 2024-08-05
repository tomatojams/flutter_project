const _host = "https://port-0-api-server-ktor-jvvy2bllywbm4f.sel5.cloudtype.app/api";
// const _host = "http://192.168.0.50:8080/api";

abstract class AuthEndpoint {
  static const String baseUrl = "$_host/auth";
  static const String login = "$_host/oauth/mobile";
  static const String signup = "$baseUrl/register";
  static const String info = "$baseUrl/info";
}
