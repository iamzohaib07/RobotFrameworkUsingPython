from SeleniumLibrary import SeleniumLibrary
from Project.Config.sites import SITES

class LoginKeywords:
    def __init__(self):
        self.selib = SeleniumLibrary()

    def open_site(self, site_name):
        site = SITES[site_name.lower()]
        self.selib.open_browser(site["url"], "chrome")
        self.selib.maximize_browser_window()

    def login_to_site(self, site_name, username, password):
        site = SITES[site_name.lower()]

        self.selib.input_text(site["username_locator"], username)
        self.selib.input_text(site["password_locator"], password)
        self.selib.click_button(site["login_btn_locator"])

    def close_site(self):
        self.selib.close_browser()
