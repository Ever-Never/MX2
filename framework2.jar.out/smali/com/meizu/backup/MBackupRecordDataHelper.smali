.class public Lcom/meizu/backup/MBackupRecordDataHelper;
.super Lcom/meizu/backup/MBaseDataHelper;
.source "MBackupRecordDataHelper.java"


# static fields
.field protected static final SELECTION_WITH_APPID:Ljava/lang/String; = "appId=?"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/meizu/backup/MBaseDataHelper;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected bulkInsert(Ljava/util/List;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/backup/MBackupRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/backup/MBackupRecord;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v1, contentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/backup/MBackupRecord;

    .line 33
    .local v3, item:Lcom/meizu/backup/MBackupRecord;
    invoke-virtual {v3}, Lcom/meizu/backup/MBackupRecord;->toContentValue()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    .end local v3           #item:Lcom/meizu/backup/MBackupRecord;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Landroid/content/ContentValues;

    .line 36
    .local v0, contentValueArray:[Landroid/content/ContentValues;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentValues;

    invoke-virtual {p0, v4}, Lcom/meizu/backup/MBaseDataHelper;->bulkInsert([Landroid/content/ContentValues;)I

    move-result v4

    return v4
.end method

.method protected getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/meizu/backup/MBackupConstants;->BACKUP_RECORD_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected query(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "appId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/backup/MBackupRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, records:Ljava/util/List;,"Ljava/util/List<Lcom/meizu/backup/MBackupRecord;>;"
    const-string v2, "appId=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v5, v2, v3, v5}, Lcom/meizu/backup/MBaseDataHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 43
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 44
    invoke-static {v0}, Lcom/meizu/backup/MBackupRecord;->constructRecordList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 45
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_0
    return-object v1
.end method
