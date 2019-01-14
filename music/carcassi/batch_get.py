from invoke import run
cmd = 'wget http://www.mutopiaproject.org/ftp/CarcassiM/O60/carcassi-op60-%02d/carcassi-op60-%02d-a4.pdf'

for n in range(1, 26):
  command = cmd % (n, n)
  run(command)
