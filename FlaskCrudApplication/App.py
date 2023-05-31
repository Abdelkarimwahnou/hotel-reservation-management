from  flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL

app = Flask(__name__)
app.secret_key = "many random bytes"

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'hotelreservation'

mysql = MySQL(app)


@app.route('/')
def Index():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * From entries ")
    data = cur.fetchall()
    cur.close()

    return render_template('index.html', entries = data )

@app.route('/insert',methods = ['POST'])
def insert():
    if request.method == "POST":
        flash("Data Inserted Successfully")
        Booking_ID =request.form['Booking_ID']
        no_of_adults = request.form['no_of_adults']
        no_of_children = request.form['no_of_children']
        no_of_week_nights = request.form['no_of_week_nights']
        room_type_reserved = request.form['room_type_reserved']
        arrival_year = request.form['arrival_year']
        arrival_month = request.form['arrival_month']
        arrival_day = request.form['arrival_day']
        booking_status = request.form['booking_status']

        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO entries (Booking_ID, no_of_adults, no_of_children, no_of_week_nights, room_type_reserved, arrival_year, arrival_month, arrival_day, booking_status) VALUES  (%s,%s,%s,%s,%s,%s,%s,%s,%s)",(Booking_ID, no_of_adults, no_of_children, no_of_week_nights, room_type_reserved, arrival_year, arrival_month, arrival_day, booking_status))
        mysql.connection.commit()
        return redirect(url_for('Index'))


@app.route('/update',methods = ['POST','GET'])
def update():
    if request.method == 'POST':
        id_data =request.form['id']
        Booking_ID = request.form['Booking_ID']
        no_of_adults = request.form['no_of_adults']
        no_of_children = request.form['no_of_children']
        no_of_week_nights = request.form['no_of_week_nights']
        room_type_reserved = request.form['room_type_reserved']
        arrival_year = request.form['arrival_year']
        arrival_month = request.form['arrival_month']
        arrival_day = request.form['arrival_day']
        booking_status = request.form['booking_status']
        cur = mysql.connection.cursor()
        cur.execute("""
        
              UPDATE entries 
              SET  Booking_ID=%s, 
              no_of_adults=%s, 
              no_of_children=%s, 
              no_of_week_nights=%s, 
              room_type_reserved=%s, 
              arrival_year=%s, 
              arrival_month=%s, 
              arrival_day=%s,   
              booking_status=%s 
              WHERE id=%s
              """, (Booking_ID,no_of_adults,no_of_children,no_of_week_nights,room_type_reserved,arrival_year,arrival_month,arrival_day,booking_status,id_data))
        flash("Data Updated Succesfully")
        mysql.connection.commit()
        return redirect(url_for('Index'))
@app.route('/delete/<string:id_data>',methods = ['POST','GET'] )
def delete(id_data):
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM entries WHERE id=%s",(id_data))
    mysql.connection.commit()
    return redirect(url_for('Index'))





if __name__ == "__main__":
    app.run(debug=True)