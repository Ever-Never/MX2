.class public abstract Lcom/meizu/backup/MBaseDataHelper;
.super Ljava/lang/Object;
.source "MBaseDataHelper.java"


# instance fields
.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/backup/MBaseDataHelper;->mResolver:Landroid/content/ContentResolver;

    .line 14
    return-void
.end method


# virtual methods
.method protected final bulkInsert([Landroid/content/ContentValues;)I
    .locals 2
    .parameter "values"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/backup/MBaseDataHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/meizu/backup/MBaseDataHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method protected final delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/meizu/backup/MBaseDataHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/meizu/backup/MBaseDataHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected abstract getContentUri()Landroid/net/Uri;
.end method

.method protected final getList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/backup/MBaseDataHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/meizu/backup/MBaseDataHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected final insert(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "values"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/backup/MBaseDataHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/meizu/backup/MBaseDataHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected notifyChange()V
    .locals 3

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/backup/MBaseDataHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/meizu/backup/MBaseDataHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 18
    return-void
.end method

.method protected final query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/meizu/backup/MBaseDataHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/meizu/backup/MBaseDataHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected final update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/meizu/backup/MBaseDataHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/meizu/backup/MBaseDataHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
