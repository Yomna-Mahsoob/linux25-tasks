echo "Enter your role (Admin, Editor, Viewer):"
read role
case $role in 
"Admin") echo "Welcome, Admin! you have full access";;
"Editor") echo "Welcome, Editor! you can edit content";;
"Viewer") echo "Welcome, Viewer! you can view content";;
*) echo "Invalid role, please enter Admin or Viewer or Editor";;
esac

