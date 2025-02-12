# HRIIS-Java-MySQL
A Human Resources Interview Invitation System built using Java (Swing) and MySQL.  
採用 Java/MySQL資料庫創建人資面試邀約系統


<!DOCTYPE html>
<html lang="zh-TW">
<head>
  <meta charset="UTF-8">
  <title>HRIIS-Java-MySQL - 人資面試邀約系統</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      margin: 0 auto;
      max-width: 800px;
      padding: 20px;
      background-color: #fafafa;
    }
    header, footer {
      text-align: center;
      padding: 1em;
      background: #f5f5f5;
      margin-bottom: 20px;
    }
    h1, h2, h3 {
      color: #333;
    }
    pre {
      background: #eee;
      padding: 10px;
      overflow-x: auto;
    }
    code {
      background-color: #eee;
      padding: 2px 4px;
      border-radius: 3px;
    }
    a {
      color: #0366d6;
      text-decoration: none;
    }
    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <header>
    <h1>HRIIS-Java-MySQL</h1>
    <p>人資面試邀約系統</p>
  </header>

  <section>
    <h2>專案概述</h2>
    <p>
      HRIIS-Java-MySQL 是一個基於 Java 與 MySQL 技術打造的人資面試邀約系統，旨在幫助人力資源部門有效管理面試流程、邀約記錄以及統計數據。本系統利用 Java Swing 實作直觀的使用者介面，並採用多層分離的架構（MVC、DAO、Service 等）以提高維護性與擴充性。
    </p>
  </section>

  <section>
    <h2>專案特色</h2>
    <ul>
      <li>採用 MVC 架構，分離 UI 與後端邏輯</li>
      <li>使用 Java Swing 建構直觀的桌面應用介面</li>
      <li>MySQL 資料庫支援資料存取與管理</li>
      <li>提供面試流程管理、邀約記錄及數據統計功能</li>
    </ul>
  </section>

  <section>
    <h2>技術棧</h2>
    <ul>
      <li><strong>程式語言：</strong> Java</li>
      <li><strong>UI 技術：</strong> Java Swing</li>
      <li><strong>資料庫：</strong> MySQL</li>
      <li><strong>開發環境：</strong> Eclipse IDE for Java Developers (2024-09)</li>
    </ul>
  </section>

  <section>
    <h2>專案結構</h2>
    <pre>
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
    </pre>
  </section>

  <section>
    <h2>安裝與執行</h2>
    <ol>
      <li>
        <strong>Clone 專案：</strong>
        <pre><code>git clone https://github.com/your-username/HRIIS-Java-MySQL.git</code></pre>
      </li>
      <li>
        <strong>在 Eclipse 中導入專案：</strong>  
        <pre><code>File &gt; Import &gt; Existing Projects into Workspace</code></pre>
      </li>
      <li>
        <strong>資料庫設定：</strong>
        <p>確認已安裝 JDK 與 MySQL，並在 MySQL 中建立相應的資料庫。請依需求修改專案中資料庫連接資訊。</p>
      </li>
      <li>
        <strong>執行專案：</strong>
        <p>設定好環境與資料庫後，即可執行主程式開始使用。</p>
      </li>
    </ol>
  </section>

  <section>
    <h2>貢獻</h2>
    <p>
      如果您有任何意見或改進建議，歡迎透過 Issues 或 Pull Requests 回饋。感謝您的支持！
    </p>
  </section>

  <section>
    <h2>授權條款</h2>
    <p>
      本專案採用 <a href="https://opensource.org/licenses/MIT" target="_blank">MIT 授權條款</a>，詳細資訊請參考 LICENSE 文件。
    </p>
  </section>

  <footer>
    <p>&copy; 2025 HRIIS-Java-MySQL 專案</p>
  </footer>
</body>
</html>
