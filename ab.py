from matplotlib.font_manager import fontManager
import matplotlib.pyplot as plt
import os


def get_font_list():
  font_list = []
  for font in fontManager.ttflist:
    font_list.append(font.name)
    if os.path.exists(font.fname):
      print(font.fname)
  return font_list



def show_chinese_fonts():
  fig = plt.figure(figsize=(12, 6))
  ax = fig.add_subplot(111)
  plt.subplots_adjust(0, 0, 1, 1, 0, 0)
  fonts = get_font_list()
  fonts = set(fonts)

  x, y = 0.05, 0.05
  dy = (1.0 - y) / (len(fonts) // 4 + (len(fonts)%4 != 0))
  for font in fonts:
    ax.text(x, y, font, {'fontsize':12}, transform=ax.transAxes)
    ax.text(x, y + dy / 2, "中文Chinese", {'fontname':font, 'fontsize':14}, transform=ax.transAxes)
    x += 0.25
    if x >= 1.0:
      y += dy
      x = 0.05
  plt.show()


if __name__ == '__main__':
  show_chinese_fonts()
