from SeleniumLibrary import SeleniumLibrary

class FacebookKeywords:
    def __init__(self):
        self.selib = SeleniumLibrary()

    def open_facebook(self):
        self.selib.open_browser("https://www.facebook.com/", "chrome")
        self.selib.maximize_browser_window()

    def login_to_facebook(self, username, password):
        # Enter email
        self.selib.input_text("id=email", username)

        # Enter password
        self.selib.input_text("id=pass", password)

        # Click login button
        self.selib.click_button("name=login")

    def close_facebook(self):
        self.selib.close_browser()
