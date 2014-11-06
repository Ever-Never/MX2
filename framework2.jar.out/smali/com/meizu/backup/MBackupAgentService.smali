.class public abstract Lcom/meizu/backup/MBackupAgentService;
.super Landroid/app/Service;
.source "MBackupAgentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/backup/MBackupAgentService$1;,
        Lcom/meizu/backup/MBackupAgentService$MBackupAgent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MBackupAgentService"


# instance fields
.field private agent:Lcom/meizu/backup/MBackupAgentService$MBackupAgent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/backup/MBackupAgentService;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/backup/MBackupAgentService;->checkChange(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/backup/MBackupAgentService;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/meizu/backup/MBackupAgentService;->initPackageNameOfRecords(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private checkChange(Ljava/util/List;Ljava/util/List;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter "isBackup"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/backup/MBackupRecord;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/backup/MBackupRecord;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, newData:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/backup/MBackupRecord;>;"
    .local p2, oldData:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/backup/MBackupRecord;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    .local v1, newDataIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/meizu/backup/MBackupRecord;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/backup/MBackupRecord;

    .line 107
    .local v2, newRecord:Lcom/meizu/backup/MBackupRecord;
    if-eqz p2, :cond_2

    .line 108
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/backup/MBackupRecord;

    .line 109
    .local v3, oldRecord:Lcom/meizu/backup/MBackupRecord;
    invoke-virtual {v2}, Lcom/meizu/backup/MBackupRecord;->getKeyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/meizu/backup/MBackupRecord;->getKeyId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/meizu/backup/MBackupRecord;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/meizu/backup/MBackupRecord;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/meizu/backup/MBackupRecord;->getNeedBackup()I

    move-result v4

    if-nez v4, :cond_1

    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 117
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #oldRecord:Lcom/meizu/backup/MBackupRecord;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    if-eqz p3, :cond_3

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #newRecord:Lcom/meizu/backup/MBackupRecord;
    check-cast v2, Lcom/meizu/backup/MBackupRecord;

    .line 121
    .restart local v2       #newRecord:Lcom/meizu/backup/MBackupRecord;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/meizu/backup/MBackupRecord;->setNeedBackup(I)V

    goto :goto_0

    .line 125
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newDataIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/meizu/backup/MBackupRecord;>;"
    .end local v2           #newRecord:Lcom/meizu/backup/MBackupRecord;
    :cond_3
    return-void
.end method

.method private initPackageNameOfRecords(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/backup/MBackupRecord;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, records:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/backup/MBackupRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/backup/MBackupRecord;

    .line 135
    .local v1, record:Lcom/meizu/backup/MBackupRecord;
    invoke-virtual {v1, p2}, Lcom/meizu/backup/MBackupRecord;->setAppId(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    .end local v1           #record:Lcom/meizu/backup/MBackupRecord;
    :cond_0
    return-void
.end method

.method public static notifyBackupDataChange(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 37
    const-string v2, "MBackupAgentService"

    const-string v3, "#Backup# notifyBackupDataChange"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, packageName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.meizu.backup.request.SINGLEBACKUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 43
    return-void
.end method


# virtual methods
.method public abstract getLocalBackupRecords()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/backup/MBackupRecord;",
            ">;"
        }
    .end annotation
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 20
    new-instance v0, Lcom/meizu/backup/MBackupAgentService$MBackupAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/backup/MBackupAgentService$MBackupAgent;-><init>(Lcom/meizu/backup/MBackupAgentService;Lcom/meizu/backup/MBackupAgentService$1;)V

    iput-object v0, p0, Lcom/meizu/backup/MBackupAgentService;->agent:Lcom/meizu/backup/MBackupAgentService$MBackupAgent;

    .line 21
    iget-object v0, p0, Lcom/meizu/backup/MBackupAgentService;->agent:Lcom/meizu/backup/MBackupAgentService$MBackupAgent;

    return-object v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/backup/MBackupAgentService;->agent:Lcom/meizu/backup/MBackupAgentService$MBackupAgent;

    .line 27
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public abstract saveChangedBackupRecords(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/backup/MBackupRecord;",
            ">;)Z"
        }
    .end annotation
.end method
