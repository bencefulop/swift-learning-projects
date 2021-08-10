//
//  ViewController.swift
//  Todoey
//
//  Created by Philipp Muellauer on 02/12/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit
import CoreData

class TodoListViewController: UITableViewController {
    
    var itemArray = [Item]()
    var selectedCategory: Category? {
        didSet {
//            loadItems()
        }
    }
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
//        loadItems()
    }
    
    // MARK: - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row].title
        cell.accessoryType = itemArray[indexPath.row].done ? .checkmark : .none
        return cell
    }
    
    // MARK: - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        itemArray[indexPath.row].done = !itemArray[indexPath.row].done
        
//        This is how we delete items from CoreData
//        context.delete(itemArray[indexPath.row])
//        itemArray.remove(at: indexPath.row)
//        saveItems()

        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
//        var textField = UITextField()
//        let alert = UIAlertController(title: "Add new Todoey item", message: "", preferredStyle: .alert)
//        let action = UIAlertAction(title: "Add item", style: .default) { action in
//
//            let newItem = Item(context: self.context)
//            newItem.title = textField.text
//            newItem.parentCategory = self.selectedCategory
//
//            self.itemArray.append(newItem)
//            self.saveItems()
//            self.tableView.reloadData()
//        }
//
//        alert.addTextField { alertTextField in
//            alertTextField.placeholder = "Create new item"
//            textField = alertTextField
//        }
//
//        alert.addAction(action)
//        present(alert, animated: true, completion: nil)
    }

//    func saveItems() {
//        do {
//            try context.save()
//        } catch {
//            print("error saving item:\(error)")
//        }
//        tableView.reloadData()
//    }
    
//    func loadItems(with request: NSFetchRequest<Item> = Item.fetchRequest(), predicate: NSPredicate? = nil) {
//
//        let categoryPredicate = NSPredicate(format: "parentCategory.name MATCHES %@", selectedCategory!.name!)
//
//        if let additionalPredicate = predicate {
//            request.predicate = NSCompoundPredicate(andPredicateWithSubpredicates: [categoryPredicate, additionalPredicate])
//        } else {
//            request.predicate = categoryPredicate
//        }
//
//
//        do {
//            itemArray = try context.fetch(request)
//        } catch {
//            print("error loading item:\(error)")
//        }
//        tableView.reloadData()
//    }
}

//MARK: - Search bar methods

extension TodoListViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//        let request : NSFetchRequest<Item> = Item.fetchRequest()
//        let predicate = NSPredicate(format: "title CONTAINS[cd] %@", searchBar.text!)
//        request.sortDescriptors = [NSSortDescriptor(key: "title", ascending: true)]
//        loadItems(with: request, predicate: predicate)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        if searchBar.text?.count == 0 {
//            loadItems()
//            DispatchQueue.main.async {
//                searchBar.resignFirstResponder()
//            }
//        }
    }
}

