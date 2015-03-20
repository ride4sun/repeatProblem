import 'package:polymer/polymer.dart';
import 'dart:html';

class Project extends Observable
{
    Project(this.name, this.dateCreated);
    @published var name;
    @published var dateCreated;
}

@CustomTag('main-app')
class MainApp extends PolymerElement {
    
    /// Constructor used to create instance of MainApp.
    MainApp.created() : super.created()
    {
        
    }
    
      /// Called when an instance of main-app is inserted into the DOM.
      attached() {
      createModelObjects();
        super.attached(); 
      }
    
      /// Called when an instance of main-app is removed from the DOM.
      detached() {
        super.detached();
      }
    
  @published List<Project> projects = new List();
  
  void createModelObjects() {
      window.console.debug("createModelObjects");
      projects.add(new Project("InterSections Santa Rosa South inspection", new DateTime.now()));
      projects.add(new Project("Playground Inspections Healdsburg ", new DateTime.now()));
      projects.add(new Project("Pothole inspection Bloomfield Rd Sebastopol", new DateTime.now()));
  }
}
