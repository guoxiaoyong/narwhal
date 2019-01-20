from http.cookies import SimpleCookie
import requests
import requests.auth
import urllib.parse


class RouterAuth(requests.auth.AuthBase):
  def __call__(self, req: requests.PreparedRequest):
    req.headers['Referer'] = 'http://192.168.0.1/'
    return req

def main():
  URL = 'http://192.168.0.1/userRpm/SysRebootRpm.htm?Reboot=%D6%D8%C6%F4%C2%B7%D3%C9%C6%F7'
  cookie = {
    'Authorization': 'Basic%20YWRtaW46MTQyODU3Z1hZ',
    'ChgPwdSubTag': ''
  }
  auth = RouterAuth()
  resp = requests.get(URL, cookies=cookie, auth=auth)
  print(resp)

if __name__ == '__main__':
  main()
