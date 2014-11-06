.class Lcom/meizu/backup/MBackupAgentService$MBackupAgent;
.super Lcom/meizu/backup/IMBackupAgent$Stub;
.source "MBackupAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/backup/MBackupAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MBackupAgent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/backup/MBackupAgentService;


# direct methods
.method private constructor <init>(Lcom/meizu/backup/MBackupAgentService;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/meizu/backup/MBackupAgentService$MBackupAgent;->this$0:Lcom/meizu/backup/MBackupAgentService;

    invoke-direct {p0}, Lcom/meizu/backup/IMBackupAgent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/backup/MBackupAgentService;Lcom/meizu/backup/MBackupAgentService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/meizu/backup/MBackupAgentService$MBackupAgent;-><init>(Lcom/meizu/backup/MBackupAgentService;)V

    return-void
.end method


# virtual methods
.method public doBackup()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 69
    const-string v5, "MBackupAgentService"

    const-string v6, "#Backup# doBackup"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v2, p0, Lcom/meizu/backup/MBackupAgentService$MBackupAgent;->this$0:Lcom/meizu/backup/MBackupAgentService;

    .line 71
    .local v2, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/meizu/backup/MBackupAgentService$MBackupAgent;->this$0:Lcom/meizu/backup/MBackupAgentService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, packageName:Ljava/lang/String;
    new-instance v0, Lcom/meizu/backup/MBackupRecordDataHelper;

    invoke-direct {v0, v2}, Lcom/meizu/backup/MBackupRecordDataHelper;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, backupRecordHelper:Lcom/meizu/backup/MBackupRecordDataHelper;
    invoke-virtual {v0, v4}, Lcom/meizu/backup/MBackupRecordDataHelper;->query(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 74
    .local v1, cacheData:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/backup/MBackupRecord;>;"
    iget-object v5, p0, Lcom/meizu/backup/MBackupAgentService$MBackupAgent;->this$0:Lcom/meizu/backup/MBackupAgentService;

    invoke-virtual {v5}, Lcom/meizu/backup/MBackupAgentService;->getLocalBackupRecords()Ljava/util/List;

    move-result-object v3

    .line 75
    .local v3, localData:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/backup/MBackupRecord;>;"
    iget-object v5, p0, Lcom/meizu/backup/MBackupAgentService$MBackupAgent;->this$0:Lcom/meizu/backup/MBackupAgentService;

    #calls: Lcom/meizu/backup/MBackupAgentService;->checkChange(Ljava/util/List;Ljava/util/List;Z)V
    invoke-static {v5, v3, v1, v7}, Lcom/meizu/backup/MBackupAgentService;->access$100(Lcom/meizu/backup/MBackupAgentService;Ljava/util/List;Ljava/util/List;Z)V

    .line 76
    iget-object v5, p0, Lcom/meizu/backup/MBackupAgentService$MBackupAgent;->this$0:Lcom/meizu/backup/MBackupAgentService;

    #calls: Lcom/meizu/backup/MBackupAgentService;->initPackageNameOfRecords(Ljava/util/List;Ljava/lang/String;)V
    invoke-static {v5, v3, v4}, Lcom/meizu/backup/MBackupAgentService;->access$200(Lcom/meizu/backup/MBackupAgentService;Ljava/util/List;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v3}, Lcom/meizu/backup/MBackupRecordDataHelper;->bulkInsert(Ljava/util/List;)I

    .line 79
    return v7
.end method

.method public doRestore()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    const-string v3, "MBackupAgentService"

    const-string v4, "#Backup# doRestore"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Lcom/meizu/backup/MBackupRecordDataHelper;

    iget-object v3, p0, Lcom/meizu/backup/MBackupAgentService$MBackupAgent;->this$0:Lcom/meizu/backup/MBackupAgentService;

    invoke-direct {v0, v3}, Lcom/meizu/backup/MBackupRecordDataHelper;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, backupRecordHelper:Lcom/meizu/backup/MBackupRecordDataHelper;
    iget-object v3, p0, Lcom/meizu/backup/MBackupAgentService$MBackupAgent;->this$0:Lcom/meizu/backup/MBackupAgentService;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/meizu/backup/MBackupRecordDataHelper;->query(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 87
    .local v2, serverData:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/backup/MBackupRecord;>;"
    iget-object v3, p0, Lcom/meizu/backup/MBackupAgentService$MBackupAgent;->this$0:Lcom/meizu/backup/MBackupAgentService;

    invoke-virtual {v3}, Lcom/meizu/backup/MBackupAgentService;->getLocalBackupRecords()Ljava/util/List;

    move-result-object v1

    .line 88
    .local v1, localData:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/backup/MBackupRecord;>;"
    iget-object v3, p0, Lcom/meizu/backup/MBackupAgentService$MBackupAgent;->this$0:Lcom/meizu/backup/MBackupAgentService;

    const/4 v4, 0x0

    #calls: Lcom/meizu/backup/MBackupAgentService;->checkChange(Ljava/util/List;Ljava/util/List;Z)V
    invoke-static {v3, v2, v1, v4}, Lcom/meizu/backup/MBackupAgentService;->access$100(Lcom/meizu/backup/MBackupAgentService;Ljava/util/List;Ljava/util/List;Z)V

    .line 89
    iget-object v3, p0, Lcom/meizu/backup/MBackupAgentService$MBackupAgent;->this$0:Lcom/meizu/backup/MBackupAgentService;

    invoke-virtual {v3, v2}, Lcom/meizu/backup/MBackupAgentService;->saveChangedBackupRecords(Ljava/util/List;)Z

    move-result v3

    return v3
.end method
