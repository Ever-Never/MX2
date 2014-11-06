.class public final Lcom/meizu/provider/ProtectedFiles$ProtectFile;
.super Ljava/lang/Object;
.source "ProtectedFiles.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/provider/ProtectedFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtectFile"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri; = null

.field public static final CONTENT_LOOKUP_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final FILE_PATH:Ljava/lang/String; = "file_path"

.field public static final FILTER_TYPE_CHILD_ALL:I = 0x8

.field public static final FILTER_TYPE_CHILD_FIRST_LEVEL:I = 0x4

.field public static final FILTER_TYPE_PARENT:I = 0x1

.field public static final FILTER_TYPE_SELF:I = 0x2

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final PARAMETER_FILTER_TYPE:Ljava/lang/String; = "filter_type"

.field public static final PARAMETER_IGNORE_EXCEPTION:Ljava/lang/String; = "ignore_exception"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "content://com.meizu.protectfile/protect_file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_URI:Landroid/net/Uri;

    .line 74
    sget-object v0, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "lookup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 81
    sget-object v0, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "resolver"
    .parameter "filePath"

    .prologue
    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const/4 v1, 0x0

    .line 157
    :goto_0
    return-object v1

    .line 155
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "file_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v1, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static delete(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .parameter "resolver"
    .parameter "filePath"

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getAllPath(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 145
    sget-object v1, Lcom/meizu/provider/ProtectedFiles$ProtectFile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "file_path"

    aput-object v4, v2, v0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 130
    const-string v1, "file_path"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, pathColumn:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The cursor must contain the FILE_PATH columns."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
