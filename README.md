# HRIIS-Java-MySQL
A Human Resources Interview Invitation System built using Java (Swing) and MySQL. HRIIS-Java-MySQL is designed to effectively manage interview processes, invitation records, and statistical data. The system leverages a user-friendly interface developed with Java Swing and adopts a multi-layered architecture (MVC, DAO, Service, etc.) to enhance maintainability and scalability.  
HRIIS-Java-MySQL 是一個基於 Java 與 MySQL 技術打造的人資面試邀約系統，旨在有效管理面試流程、邀約記錄及統計數據。本系統利用 Java Swing 實作直觀的使用者介面，並採用多層分離的架構（如 MVC、DAO、Service 等）以提升維護性與擴充性。

---

## 概述

- 可輔助「管理員」，有效管理人員及部門，甚至管控一些突發異常。
- 供「單位主管(面試官)」查閱未來及歷史面試相關資訊。
- 提供「人資」在面試流程管控及「人資主管」在人員支配及輔助數據統計分析。

---

## 技術棧

- **程式語言：** Java  
- **UI 技術：** Java Swing  
- **資料庫：** MySQL
- **開發環境：** Eclipse IDE for Java Developers (2024-09)

---

## 專案結構

```plaintext
HumanResources/
└── Src/
    ├── chart/  
    │   ├── InterviewChartApp.java       // 求職者職稱與性別統計圖
    │   └── InterviewStatusChartApp.java   // 面試進度分析圖
    ├── Controller/                       *UI介面
    │   ├── department/  
    │   │   ├── DepartmentListFrame.java   // 部門列表
    │   │   └── DepartmentEditFrame.java   // 部門維護
    │   ├── interviewrecord/  
    │   │   ├── HRInterviewManagement.java // 邀約記錄列表
    │   │   ├── InterviewRecordEditDialog.java // 邀約記錄維護
    │   │   └── MyInterview.java           // 使用者參與面試列表
    │   └── member/  
    │       ├── Home.java                  // 首頁
    │       ├── Login.java                 // 登入頁
    │       ├── MemberEditDialog.java      // 管理人員維護
    │       ├── MemberManagementFrame.java // 管理人員列表
    │       ├── ProfileEditFrame.java      // 個人資料維護
    │       └── Register.java              // 註冊
    ├── Dao/                               *SQL單一功能化
    │   ├── DepartmentDao.java             // 部門
    │   ├── InterviewRecordDao.java        // 面試
    │   ├── MemberDao.java                 // 人員
    │   └── impl/  
    │       ├── DepartmentDaoImpl.java     // 部門
    │       ├── InterviewRecordDaoImpl.java// 面試
    │       └── MemberDaoImpl.java         // 會員
    ├── Model/                              *模組
    │   ├── Department.java                // 部門
    │   ├── InterviewRecord.java           // 面試
    │   └── Member.java                    // 人員
    ├── Service/                           *整合
    │   ├── DepartmentService.java         // 部門
    │   ├── InterviewRecordService.java    // 面試
    │   ├── MemberService.java             // 人員
    │   └── impl/  
    │       ├── DepartmentServiceImpl.java // 部門
    │       ├── InterviewRecordServiceImpl.java // 面試
    │       └── MemberServiceImpl.java     // 人員
    └── Util/  
        ├── Tool.java                      // 輔助功能
        └── StatusConstants.java           // 常數定義
```
---

## 載入資料庫

- **下載檔案：** [資料表下載](https://github.com/MountainTea/HRIIS-Java-MySQL/tree/main/sql "資料表下載")
- **導入Schemas：** xxxxxx
- 
