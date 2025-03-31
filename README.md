# RickAndMorty_Test

# iOS-додаток: RickAndMorty

## Опис проєкту
Цей проєкт є iOS-додатком, який відображає список персонажів із API [Rick and Morty](https://rickandmortyapi.com) з можливістю перегляду детальної інформації про кожного персонажа. Додаток розроблений з використанням архітектури **Clean Swift**, а також фреймворків **SnapKit** і **Alamofire**.

## Функціональність
- Відображення списку персонажів із зображеннями та назвами  
- Екран детальної інформації про персонажа  
- Підтримка офлайн-режиму із кешуванням даних у **CoreData**  
- Повна адаптація для **iPhone** та **iPad**  
- Підтримка **портретної та ландшафтної орієнтації**  
- Мінімальна версія iOS: **15.0**  

## Використані технології
- **Swift**  
- **UIKit** (без Storyboard)  
- **Clean Swift** (VIP Cycle)  
- **Alamofire** (для мережевих запитів)  
- **SnapKit** (для верстки інтерфейсу)  
- **CoreData** (для збереження даних в офлайн-режимі)  

## Встановлення та запуск проєкту
### 1. Клонування репозиторію
```bash
git clone https://github.com/TPOJlb/RickAndMorty_Test.git
```
Далі відкрийте **..xcodeproj** файл у Xcode.

### 3. Запуск проєкту
1. Відкрити проєкт у **Xcode 15+**  
2. Вибрати потрібний симулятор або реальний пристрій  
3. Натиснути **Run** (Cmd + R)  

## Структура проєкту
```
📂 RickAndMorty
│── 📂 Common
│   │── 📂 Extensions
│   │   ├── Date+ISO.swift
│   │── 📂 Helpers
│   │   ├── Connectivity.swift
│
│── 📂 CoreData
│   │── 📂 DataModels
│   │   ├── CharactersData.swift
│   │── 📂 Entities
│   │   ├── CharacterEntity.swift
│   │── 📂 Managers
│   │   ├── CoreDataManager.swift
│
│── 📂 Network
│   │── 📂 Response
│   │   ├── CharacterResponse.swift
│
│── 📂 Resources
│   │── 📂 Assets
│   │   │   ├── Colors
│
│── 📂 Scenes
│   │── 📂 CharacterDetails
│   │   │   ├── CharacterDetailsViewController.swift
│   │   │   ├── CharacterDetailsInteractor.swift
│   │   │   ├── CharacterDetailsPresenter.swift
│   │   │   ├── CharacterDetailsRouter.swift
│   │   │   ├── 📂 Views
│   │   │       ├── CharacterDetailsView.swift
│   │── 📂 CharactersList
│   │   │   ├── CharacterListViewController.swift
│   │   │   ├── CharacterListInteractor.swift
│   │   │   ├── CharacterListPresenter.swift
│   │   │   ├── CharacterListRouter.swift
│   │   │   ├── 📂 Views
│   │   │   │   ├── CharacterListView.swift
│   │   │   │   ├── 📂 Cell
│   │   │   │       ├── CharacterCell.swift
│
│── AppDelegate.swift
│── LaunchScreen.storyboard
│
│── 📦 Alamofire 5.10.2
│── 📦 SnapKit 5.7.1
```

## Час виконання завдання
Приблизний час виконання: **~14 годин**

## Автор
**Мурайов Кирило** – iOS-розробник

---
Якщо у вас є питання або пропозиції, зв’яжіться зі мною! 🚀

