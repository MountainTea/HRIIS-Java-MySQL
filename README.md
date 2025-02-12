# HRIIS-Java-MySQL
A Human Resources Interview Invitation System built using Java (Swing) and MySQL.  
採用 Java/MySQL資料庫創建人資面試邀約系統。

---

## 專案概述

- 可輔助多位管理員窗口，有效管理人員及部門，甚至管控一些突發異常。
- 供面試官查閱未來及歷史面試相關資訊。
- 提供人資在面試流程管控、邀約記錄落實及數據統計功能。

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
    ├── Dao/  *SQL單一功能
    │   ├── DepartmentDao.java             // 部門
    │   ├── InterviewRecordDao.java        // 面試
    │   ├── MemberDao.java                 // 人員
    │   └── impl/  
    │       ├── DepartmentDaoImpl.java     // 部門
    │       ├── InterviewRecordDaoImpl.java// 面試
    │       └── MemberDaoImpl.java         // 會員
    ├── Model/  *模組
    │   ├── Department.java                // 部門
    │   ├── InterviewRecord.java           // 面試
    │   └── Member.java                    // 人員
    ├── Service/   *整合功能
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
