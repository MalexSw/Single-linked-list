# Single-linked-list 

This repository contains a simple implementation of a **singly linked list** in Swift using generics. The code demonstrates fundamental operations on a linked list, such as **adding**, **inserting**, **deleting**, and **printing** nodes.  

---

## 📖 Features  

- Generic `Node<T>` class that stores a value and a reference to the next node.  
- Generic `LinkedList<T>` struct constrained to `Equatable` so values can be compared during operations.  
- Core operations:  
  - `add(node:)` → Appends a node at the end of the list.  
  - `insertAfter(node:nodeAfterValue:)` → Inserts a new node after a node with a given value.  
  - `delete(nodeValue:)` → Deletes a node by value.  
  - `printList()` → Prints all node values in order.  
- Support for **empty list detection** (`isEmpty`).  

---

## 🛠️ Code Analysis  

### Data Structure  
- `Node<T>` is implemented as a **class** to allow reference semantics, which is necessary for linked list behavior.  
- `LinkedList<T>` is implemented as a **struct** to group operations, but internally relies on reference-based nodes.  

### Edge Cases Handled  
- Deletion in an empty list.  
- Insertion after a non-existing value.  
- Attempting to delete a non-existing value.  

### Possible Improvements  
- **`insertAfter` safety**: currently force unwraps `currentNode.next!`. Safer handling with optional chaining would prevent runtime crashes.  
- **Delete head case**: deleting the first node does not currently work (as `beforeTheDeleted` is never set when deleting the head).  
- **Naming**: `nodeAfterValue` might be renamed to `afterValue` for clarity.  
- **Convenience methods**:  
  - `append(_ value: T)` to add a new node directly with a value.  
  - `contains(_ value: T)` to check membership.  
  - `count` to return the number of elements.  

---

## 📌 Summary
This project is a learning-focused implementation of a generic linked list in Swift. It covers basic operations while highlighting common edge cases and potential pitfalls. It's a great starting point for understanding pointer-based data structures in Swift.


