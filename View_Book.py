from tkinter import *
from tkinter import ttk
import mysql.connector as con

def book_list():

    mycon=con.connect(host='localhost',user='root',passwd='ar12',database='cs_project')
  
    cur=mycon.cursor()

    r1=Toplevel()
  
    r1.title('BOOK LIST')
  
    r1.state('zoomed')
  
    r1.geometry('1920x1080')

    # Create A Main Frame
  
    main_frame = Frame(r1,borderwidth=0,bg='#9EE2FF')
  
    main_frame.pack(fill=BOTH, expand=1)

    # Create A Canvas
  
    my_canvas = Canvas(main_frame,borderwidth=0,bg='#9EE2FF')
  
    my_canvas.pack(side=LEFT, fill=BOTH, expand=1)

    # Add A Scrollbar To The Canvas

    my_scrollbar = ttk.Scrollbar(main_frame, orient=VERTICAL, command=my_canvas.yview)

    my_scrollbar.pack(side=RIGHT, fill=Y)

    # Configure The Canvas

    my_canvas.configure(yscrollcommand=my_scrollbar.set)

    my_canvas.bind('<Configure>', lambda e: my_canvas.configure(scrollregion = my_canvas.bbox("all")))

    # Create ANOTHER Frame INSIDE the Canvas

    second_frame = Frame(my_canvas,borderwidth=0,bg='#9EE2FF')    

    # Add that New frame To a Window In The Canvas

    my_canvas.create_window((0,0), window=second_frame, anchor="nw")

    #LABELS

    l1=Label(second_frame,text='BOOK NAME',borderwidth=3,relief='solid',font = ("Comic Sans MS bold",20),bg='purple',fg='white',padx=100,pady=15)

    l1.grid(row=0,column=0,padx=35,pady=10)

    l2=Label(second_frame,text='AUTHOR',borderwidth=3,relief='solid', font = ("Comic Sans MS bold",20),bg='purple',padx=70,pady=15,fg='white')

    l2.grid(row=0,column=1,padx=35,pady=10)

    l3=Label(second_frame,text='CODE',borderwidth=3,relief='solid', font = ("Comic Sans MS bold",20),bg='purple',padx=30,pady=15,fg='white')

    l3.grid(row=0,column=2,padx=35,pady=10)

    l4=Label(second_frame,text='GENRE',borderwidth=3,relief='solid',bg='purple', font = ("Comic Sans MS bold",20),padx=40,pady=15,fg='white')

    l4.grid(row=0,column=3,padx=35,pady=10)

    l5=Label(second_frame,text='STATUS',borderwidth=3,relief='solid',bg='purple', font = ("Comic Sans MS bold",20),padx=40,pady=15,fg='white')

    l5.grid(row=0,column=4,padx=35,pady=10)

    cur.execute('select * from books')

    books=cur.fetchall()

    for i in range(len(books)):

        l=Label(second_frame,text=books[i][0],wraplength=380,borderwidth=3,relief='solid', font = ("Comic Sans MS bold",15),fg='white',bg='#0ED53C',padx=5,pady=5,width=32)

        l.grid(row=i+1,column=0,padx=10,pady=10)

        l=Label(second_frame,text=books[i][1],borderwidth=3,wraplength=230,relief='solid', font = ("Comic Sans MS bold",15),fg='white',bg='red',padx=5,pady=5,width=20)

        l.grid(row=i+1,column=1,padx=10,pady=10)

        l=Label(second_frame,text=books[i][2],borderwidth=3,relief='solid', font = ("Comic Sans MS bold",15),fg='white',bg='#0123ff',padx=5,pady=5)

        l.grid(row=i+1,column=2,padx=10,pady=10)

        l=Label(second_frame,text=books[i][3],borderwidth=3,relief='solid', font = ("Comic Sans MS bold",15),fg='white',bg='#ff02ae',padx=5,pady=5,width=10)

        l.grid(row=i+1,column=3,padx=10,pady=10)

        l=Label(second_frame,text=books[i][4],borderwidth=3,relief='solid', font = ("Comic Sans MS bold",15),fg='white',bg='orange',padx=6,pady=5,width=10)

        l.grid(row=i+1,column=4,padx=10,pady=10)

    r1.mainloop()