class Task{
  int id;
  String name;
  String date;
  Task(this.name, this.date);
  
  toMap(){
    Map<String, dynamic> map = {
      'name' : this.name,
      'date' : this.date
    };
    if(id != null){
      map['id'] = this.id;
    }
    return map;
  }
}