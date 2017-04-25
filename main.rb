require 'opengl'
require 'glu'
require 'glut'

include Gl
include Glu
include Glut

def display
  glClearColor(0.0, 0.0, 0.0, 0.0)
  glClear(GL_COLOR_BUFFER_BIT)
  glMatrixMode(GL_PROJECTION)
  glLoadIdentity
  glOrtho(-1.0,1.0,-1.0,1.0,-1.0,1.0)

  glMatrixMode(GL_MODELVIEW)
  glBegin(GL_TRIANGLES)
    glColor3f(1.0,0.0,0.0)    # Color del primer vértice: rojo
    glVertex3f(0.0,0.8,0.0)   # Coordenadas del primer vértice
    glColor3f(0.0,1.0,0.0)    # Color del segundo vértice: verde
    glVertex3f(-0.6,-0.2,0.0) # Coordenadas del  segundo vértice
    glColor3f(0.0,0.0,1.0)    # Color del tercer vértice: azúl
    glVertex3f(0.6,-0.2,0.0)  #Color del tercer vértice: azúl
  glEnd
  glFlush
  glutPostRedisplay
end

glutInit
glutInitDisplayMode(GLUT_SINGLE | GLUT_RGBA)
glutInitWindowSize(500,500)
glutInitWindowPosition(20,20)
glutCreateWindow("Hola OpenGL, en Ruby")
glutDisplayFunc :display
glutMainLoop
