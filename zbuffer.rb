require 'opengl'
require 'glu'
require 'glut'

include Gl
include Glu
include Glut

def display
  glDepthFunc(GL_LEQUAL)
  glEnable(GL_DEPTH_TEST)
  glClearColor(0.0,0.0,0.0,0.0)
  glClearDepth(1.0)
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

  glMatrixMode(GL_PROJECTION)
  glLoadIdentity
  gluPerspective(60.0,1.0,1.0,100.0)

  glMatrixMode(GL_MODELVIEW)
  glTranslatef(0.0,0.0,-2.0)
  
  glBegin(GL_QUADS)
    glColor3f(0.0,1.0,1.0)
    glVertex3f(-0.5,0.5,-0.5)
    glVertex3f(-0.5,-0.5,0.5)
    glVertex3f(0.5,-0.5,0.5)
    glVertex3f(0.5,0.5,-0.5)
  glEnd

  glBegin(GL_TRIANGLES)
     glColor3f(1.0,0.0,0.0)
     glVertex3f(0.0,0.5,0.0)
     glVertex3f(-0.7,-0.5,0.0)
     glVertex3f(0.7,-0.5,0.0)
  glEnd

  glFlush
  sleep(20)
end

glutInit
glutInitDisplayMode(GLUT_SINGLE | GLUT_RGBA | GLUT_DEPTH)
glutInitWindowSize(500,500)
glutInitWindowPosition(20,20)
glutCreateWindow("OpenGL, Z-Buffer")
glutDisplayFunc :display
glutMainLoop
