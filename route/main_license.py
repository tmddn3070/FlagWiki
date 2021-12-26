from .tool.func import *

def main_license_2(conn):
    curs = conn.cursor()

    return easy_minify(flask.render_template(skin_check(),
        imp = ['license.html', wiki_set(), wiki_custom(), wiki_css([0, 0])],
        data = open('./views/main_css/file/license.html', encoding='utf8').read(),
        menu = 0
    ))
