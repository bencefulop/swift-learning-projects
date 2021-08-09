//
//  CategoryViewController.swift
//  Todoey
//
//  Created by Bence Fulop on 9/8/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit
import CoreData

class CategoryViewController: UITableViewController {

    var categoryArray = [Category]()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCategories()
    }
    
    func saveCategories() {
        do {
            try context.save()
        } catch {
            print("error saving categories:\(error)")
        }
        tableView.reloadData()
    }
    
    func loadCategories(with request: NSFetchRequest<Category> = Category.fetchRequest()) {
        do {
            categoryArray = try context.fetch(request)
        } catch {
            print("error loading categories:\(error)")
        }
        tableView.reloadData()
    }

    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        let alert = UIAlertController(title: "Add a new category ", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add category", style: .default) { action in
                        
            let newCategory = Category(context: self.context)
            newCategory.name = textField.text
            
            self.categoryArray.append(newCategory)
            self.saveCategories()
            self.tableView.reloadData()
        }
        
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "Create a new category"
            textField = alertTextField
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    //MARK: - TableViewDataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryItemCell", for: indexPath)
        cell.textLabel?.text = categoryArray[indexPath.row].name
        return cell
    }
    
    
    // MARK: - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // we'll need to segue here to the appropriate category
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

