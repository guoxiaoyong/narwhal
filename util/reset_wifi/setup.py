from setuptools import setup

setup(name='reset_wifi',
      version='0.1',
      description='Util to reset wifi',
      author='Guo Xiaoyong',
      author_email='guo.xiaoyong@gmail.com',
      url='https://www.guoxiaoyong.com/',
      packages=['reset_wifi'],
      include_package_data=True,
      entry_points={
         'console_scripts': ['reset_wifi=reset_wifi.__main__:main'],
      },
)
