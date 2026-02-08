# Flutter Lab 3 - Layout Basics

## Student: Aray Akhylbek
## Laboratory Work 3: Container, Text, Column, Row, Padding, Margin, AppBar, BoxDecoration

### Completed Tasks:
✅ **AppBar** with title "Lab 3: Layout Basics", teal background, white bold text (size 20)  
✅ **Background Color** set to Colors.grey[300]  
✅ **Body Layout** using Column with vertical arrangement  
✅ **First Container** with blue background, white text "Welcome to Flutter!", padding, border radius, shadow  
✅ **Second Container** with green background, Row with "Left Text" and "Right Text", white border, padding  

### Screenshot:
![Lab 3 Screenshot](lab3_photo.png)

### Code Implementation:
```dart
// AppBar
AppBar(
  title: Text(
    'Lab 3: Layout Basics',
    style: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  backgroundColor: Colors.teal,
)

// First Container (blue with shadow)
Container(
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        offset: Offset(2, 2),
        blurRadius: 6,
      ),
    ],
  ),
  child: Text(
    'Welcome to Flutter!',
    style: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
  ),
)

// Second Container (green with border)
Container(
  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
  decoration: BoxDecoration(
    color: Colors.green,
    borderRadius: BorderRadius.circular(8),
    border: Border.all(
      color: Colors.white,
      width: 2,
    ),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Left Text',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      Text(
        'Right Text',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    ],
  ),
)