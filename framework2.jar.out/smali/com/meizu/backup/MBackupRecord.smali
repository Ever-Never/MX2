.class public Lcom/meizu/backup/MBackupRecord;
.super Ljava/lang/Object;
.source "MBackupRecord.java"


# static fields
.field public static final KEY_APP_ID:Ljava/lang/String; = "appId"

.field public static final KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_KEY_ID:Ljava/lang/String; = "keyId"

.field public static final KEY_NEED_BACKUP:Ljava/lang/String; = "need_backup"

.field public static final VALUE_NEED:I = 0x1

.field public static final VALUE_NOT_NEED:I


# instance fields
.field protected appId:Ljava/lang/String;

.field protected content:Ljava/lang/String;

.field protected keyId:Ljava/lang/String;

.field protected needBackup:I


# direct methods
.method protected constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/backup/MBackupRecord;->appId:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/backup/MBackupRecord;->keyId:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/backup/MBackupRecord;->content:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/backup/MBackupRecord;->needBackup:I

    .line 39
    const-string v0, "appId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/backup/MBackupRecord;->appId:Ljava/lang/String;

    .line 40
    const-string v0, "keyId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/backup/MBackupRecord;->keyId:Ljava/lang/String;

    .line 41
    const-string v0, "content"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/backup/MBackupRecord;->content:Ljava/lang/String;

    .line 42
    const-string v0, "need_backup"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/backup/MBackupRecord;->needBackup:I

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "keyId"
    .parameter "content"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/backup/MBackupRecord;->appId:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/backup/MBackupRecord;->keyId:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/backup/MBackupRecord;->content:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/meizu/backup/MBackupRecord;->needBackup:I

    .line 33
    iput-object p1, p0, Lcom/meizu/backup/MBackupRecord;->keyId:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/meizu/backup/MBackupRecord;->content:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/meizu/backup/MBackupRecord;->needBackup:I

    .line 36
    return-void
.end method

.method protected static constructRecordList(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/backup/MBackupRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, records:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/backup/MBackupRecord;>;"
    const/4 v0, 0x0

    .line 103
    .local v0, record:Lcom/meizu/backup/MBackupRecord;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #records:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/backup/MBackupRecord;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .restart local v1       #records:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/backup/MBackupRecord;>;"
    :cond_0
    new-instance v0, Lcom/meizu/backup/MBackupRecord;

    .end local v0           #record:Lcom/meizu/backup/MBackupRecord;
    invoke-direct {v0, p0}, Lcom/meizu/backup/MBackupRecord;-><init>(Landroid/database/Cursor;)V

    .line 107
    .restart local v0       #record:Lcom/meizu/backup/MBackupRecord;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/backup/MBackupRecord;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/meizu/backup/MBackupRecord;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/backup/MBackupRecord;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method protected getNeedBackup()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/meizu/backup/MBackupRecord;->needBackup:I

    return v0
.end method

.method protected setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meizu/backup/MBackupRecord;->appId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method protected setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/backup/MBackupRecord;->content:Ljava/lang/String;

    .line 84
    return-void
.end method

.method protected setKeyId(Ljava/lang/String;)V
    .locals 0
    .parameter "keyId"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/meizu/backup/MBackupRecord;->keyId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method protected setNeedBackup(I)V
    .locals 0
    .parameter "needBackup"

    .prologue
    .line 91
    iput p1, p0, Lcom/meizu/backup/MBackupRecord;->needBackup:I

    .line 92
    return-void
.end method

.method protected toContentValue()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 47
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "appId"

    iget-object v2, p0, Lcom/meizu/backup/MBackupRecord;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "keyId"

    iget-object v2, p0, Lcom/meizu/backup/MBackupRecord;->keyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "content"

    iget-object v2, p0, Lcom/meizu/backup/MBackupRecord;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "need_backup"

    iget v2, p0, Lcom/meizu/backup/MBackupRecord;->needBackup:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    return-object v0
.end method
