# Hotel management App
## Description:
A simple Hotel room reservation management made with Flask

## Start app:
### 1. Install dependecies
```bash
pip install -r requirement.txt
```

### 2. Database setup
Load data from the hotelreservation.sql file, then change database configuration in App.py:
```python
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'hotelreservation'
```

### 3. Run app
```bash
cd FlaskCrudApplication
flask --app App run
```
### 4. Results
interface:
![Screenshot1](https://raw.githubusercontent.com/Abdelkarimwahnou/hotel-reservation-management/master/interface%20insert.PNG)

