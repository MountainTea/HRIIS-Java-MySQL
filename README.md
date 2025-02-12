# HRIIS-Java-MySQL
A Human Resources Interview Invitation System built using Java (Swing) and MySQL.  
採用 Java/MySQL 資料庫創建人資面試邀約系統

---

## 專案概述

HRIIS-Java-MySQL 是一個基於 Java 與 MySQL 技術打造的人資面試邀約系統，旨在幫助人力資源部門有效管理面試流程、邀約記錄以及統計數據。  
本系統利用 Java Swing 實作直觀的使用者介面，並採用多層分離的架構（MVC、DAO、Service 等）以提高維護性與擴充性。

---

## 專案特色

- 採用 MVC 架構，分離 UI 與後端邏輯
- 使用 Java Swing 建構直觀的桌面應用介面
- MySQL 資料庫支援資料存取與管理
- 提供面試流程管理、邀約記錄及數據統計功能

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
    ├── Controller/  
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
    ├── Dao/  
    │   ├── DepartmentDao.java             // 部門
    │   ├── InterviewRecordDao.java        // 面試
    │   ├── MemberDao.java                 // 人員
    │   └── impl/  
    │       ├── DepartmentDaoImpl.java     // 部門
    │       ├── InterviewRecordDaoImpl.java// 面試
    │       └── MemberDaoImpl.java         // 會員
    ├── Model/  
    │   ├── Department.java                // 部門
    │   ├── InterviewRecord.java           // 面試
    │   └── Member.java                    // 人員
    ├── Service/  
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
