# Flask & MongoDB - Assignment 3

This folder contains the full-stack Flask application integrated with MongoDB Atlas and a custom JSON API.

## 🚀 Key Features
- **JSON API**: `/api` route serving data from `data.json`.
- **MongoDB Atlas**: Dynamic form submission that stores data in the cloud.
- **Error Handling**: On-page validation and database error messaging.
- **Success Redirect**: Modern success landing page.

## 📂 Project Structure
- `app.py`: Main Flask application logic.
- `data.json`: Backend storage for the API.
- `templates/`: HTML views (Index & Success).
- `Assignment_3_Submission.docx`: Detailed report for submission.

## ⚙️ Setup Instructions
1. Navigate to `assignment_3`.
2. Create a `.env` file and add your MongoDB URI:
   `MONGO_URI=your_atlas_connection_string`
3. Install requirements: `pip install flask pymongo dnspython python-dotenv`.
4. Run the app: `python app.py`.
