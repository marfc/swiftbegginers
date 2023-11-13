//
//  ViewController.swift
//  ToDoList_CoreData
//
//  Created by Mfercons on 13/11/23.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    //Referencia a la tableView puesta por StoryBoard
    @IBOutlet weak var tablaTareas: UITableView!
    
    //Array con la lista de tareas de la app
    var listaTareas = [Tarea]()
   
    //Referencia al contenedor de CoreData
    let contexto = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tablaTareas.delegate = self
        tablaTareas.dataSource = self

        // Para que la app haga una lectura a la base de datos nada más ser lanzada (así se guarda la info
        // cuando se cierra y se vuelve a abrir la app)
        leerTareas()
    }

    //Botón de añadir nueva tarea
    @IBAction func nuevaTarea(_ sender: UIBarButtonItem) {
        var nombreTarea = UITextField()
        
        //La forma de añadir la tarea es un alert
        let alerta = UIAlertController(title: "Nueva Tarea", message: "", preferredStyle: .alert)
        
        //El botón agregar añade la tarea a la lista
        let accionAceptar = UIAlertAction(title: "Agregar", style: .default) { (_) in
            //La mete en CoreData
            let nuevaTarea = Tarea(context: self.contexto)
            nuevaTarea.nombre = nombreTarea.text //Texto escrito por el usuario
            nuevaTarea.realizada = false         //Por defecto, no está realizada
            
            self.listaTareas.append(nuevaTarea)  //Añadida la tarea a lista de tareas
            
            self.guardar()                       //Guardada en CoreData
            
        }
        
        //TextField donde escribimos la tarea
        alerta.addTextField { textFieldAlerta in
            textFieldAlerta.placeholder = "Escribe tu texto aquí..."
            nombreTarea = textFieldAlerta
        }
        
        alerta.addAction(accionAceptar)
        
        present(alerta, animated: true)
    }
    
    //Función para guardar en el contexto
    func guardar() {
        do {
            try contexto.save()
        } catch {
            print(error.localizedDescription)
        }
        
        self.tablaTareas.reloadData()
    }
    
    func leerTareas() {
        let solicitud : NSFetchRequest<Tarea> = Tarea.fetchRequest()
        
        do {
            listaTareas = try contexto.fetch(solicitud)
        } catch {
            print(error.localizedDescription)
        }
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaTareas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //obtenemos la celda
        let celda = tablaTareas.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        //Obtenemos la tarea específica
        let tarea = listaTareas[indexPath.row]
        
        //Operador ternario
        //Añadimos al text el nombre de la tarea (dato CoreData)
        celda.textLabel?.text = tarea.nombre
        //Si realizada true, el texto será negro, si no será azul
        celda.textLabel?.textColor = tarea.realizada ? .black : .blue
        
        //El detailText será Completada si realizada=true, Por completar si false
        celda.detailTextLabel?.text = tarea.realizada ? "Completada" : "Por completar"
        
        //Marcar las tareas completadas
        celda.accessoryType = tarea.realizada ? .checkmark : .none
        
        return celda
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Si tiene una checkmark y la seleccionamos, hay que quitársela, y viceversa
        if tablaTareas.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tablaTareas.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tablaTareas.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        //Editar en CoreData
        listaTareas[indexPath.row].realizada = !listaTareas[indexPath.row].realizada
        
        guardar()
        
        //Deseleccionar la tarea
        tablaTareas.deselectRow(at: indexPath, animated: true)
    }
    
    //Acción al hacer trailing swipe
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        //Eliminar si trailing swipe
        let accionEliminar = UIContextualAction(style: .normal, title: "Eliminar") { _,_,_ in
            //Eliminamos la tarea de CoreData
            self.contexto.delete(self.listaTareas[indexPath.row])
            
            //Eliminamos la tarea de listaTareas
            self.listaTareas.remove(at: indexPath.row)
            
            //Actualizamos
            self.guardar()
        }
        
        //BackgroundColor de Eliminar
        accionEliminar.backgroundColor = .systemRed
        
        return UISwipeActionsConfiguration(actions: [accionEliminar])
    }
}
