.class public Lcom/meizu/backup/MBackupConstants;
.super Ljava/lang/Object;
.source "MBackupConstants.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.meizu.backup"

.field public static final BACKUP_EXTRA_DATA_PACKAGE:Ljava/lang/String; = "packageName"

.field public static final BACKUP_RECORDS_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.backup.record"

.field public static final BACKUP_RECORD_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.backup.record"

.field public static final BACKUP_RECORD_CONTENT_URI:Landroid/net/Uri; = null

.field public static final BACKUP_RECORD_DIR_PATH:Ljava/lang/String; = "records"

.field public static final BACKUP_RECORD_ITEM_PATH:Ljava/lang/String; = "records/#"

.field public static final BACKUP_REQUEST_SINGLE_BACKUP:Ljava/lang/String; = "com.meizu.backup.request.SINGLEBACKUP"

.field public static final QUERY_CATEGORY:Ljava/lang/String; = "com.meizu.backup.service.AGENT"

.field public static final SCHEME:Ljava/lang/String; = "content://"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "content://com.meizu.backup/records"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/backup/MBackupConstants;->BACKUP_RECORD_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
