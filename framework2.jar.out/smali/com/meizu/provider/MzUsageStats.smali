.class public final Lcom/meizu/provider/MzUsageStats;
.super Ljava/lang/Object;
.source "MzUsageStats.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "mzusagestats"

.field private static LOGD:Z = false

.field public static final MZ_US_NEWSESSION_URI:Landroid/net/Uri; = null

.field public static final MZ_US_OPERATION_URI:Landroid/net/Uri; = null

.field public static final MZ_US_PACKAGEINFO_URI:Landroid/net/Uri; = null

.field public static final MZ_US_PROPERTY_URI:Landroid/net/Uri; = null

.field public static final MZ_US_URI:Landroid/net/Uri; = null

.field public static final MZ_US_WHITELIST_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "MzUsageStats"

.field public static final _ID:Ljava/lang/String; = "_id"

.field public static final insertTime:Ljava/lang/String; = "insert_time"

.field public static final lastReportResult:Ljava/lang/String; = "last_report_result"

.field public static final lastReportTime:Ljava/lang/String; = "last_report_time"

.field public static final maxRecordLineNumber:Ljava/lang/String; = "max_record_line_number"

.field public static final needRecord:Ljava/lang/String; = "need_record"

.field public static final operationDesc:Ljava/lang/String; = "operation"

.field public static final operationID:Ljava/lang/String; = "operation_id"

.field public static final operationLevel:Ljava/lang/String; = "level"

.field public static final packageID:Ljava/lang/String; = "package_name"

.field public static final packageListVer:Ljava/lang/String; = "package_list_ver"

.field public static final packageName:Ljava/lang/String; = "package_name"

.field public static final propertyDesc:Ljava/lang/String; = "property_description"

.field public static final propertyValues:Ljava/lang/String; = "property_values"

.field public static final sessionDesc:Ljava/lang/String; = "session_description"

.field public static final sessionID:Ljava/lang/String; = "session_id"

.field public static final sessionUUID:Ljava/lang/String; = "session_uuid"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "MzUsageStats"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/meizu/provider/MzUsageStats;->LOGD:Z

    .line 32
    const-string v0, "content://mzusagestats"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/provider/MzUsageStats;->MZ_US_URI:Landroid/net/Uri;

    .line 33
    sget-object v0, Lcom/meizu/provider/MzUsageStats;->MZ_US_URI:Landroid/net/Uri;

    const-string v1, "newsession"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/provider/MzUsageStats;->MZ_US_NEWSESSION_URI:Landroid/net/Uri;

    .line 35
    sget-object v0, Lcom/meizu/provider/MzUsageStats;->MZ_US_URI:Landroid/net/Uri;

    const-string v1, "operation"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/provider/MzUsageStats;->MZ_US_OPERATION_URI:Landroid/net/Uri;

    .line 37
    sget-object v0, Lcom/meizu/provider/MzUsageStats;->MZ_US_URI:Landroid/net/Uri;

    const-string v1, "property"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/provider/MzUsageStats;->MZ_US_PROPERTY_URI:Landroid/net/Uri;

    .line 39
    sget-object v0, Lcom/meizu/provider/MzUsageStats;->MZ_US_URI:Landroid/net/Uri;

    const-string v1, "packageinfo"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/provider/MzUsageStats;->MZ_US_PACKAGEINFO_URI:Landroid/net/Uri;

    .line 41
    sget-object v0, Lcom/meizu/provider/MzUsageStats;->MZ_US_URI:Landroid/net/Uri;

    const-string v1, "whitelist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/provider/MzUsageStats;->MZ_US_WHITELIST_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dataShouldCollect(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "meizu_data_collection"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getNewSessionId(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 11
    .parameter "context"
    .parameter "Sdescription"
    .parameter "pkID"

    .prologue
    const/4 v6, 0x0

    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    .line 81
    invoke-static {p0}, Lcom/meizu/provider/MzUsageStats;->dataShouldCollect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    sget-boolean v0, Lcom/meizu/provider/MzUsageStats;->LOGD:Z

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "MzUsageStats"

    const-string v1, "getNewSessionId data Should not Collect!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    :goto_0
    return-wide v8

    .line 89
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 93
    sget-object v0, Lcom/meizu/provider/MzUsageStats;->MZ_US_NEWSESSION_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 95
    .local v10, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "sessionDesc"

    invoke-virtual {v10, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 96
    const-string v0, "package_name"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 99
    .local v2, uri:Landroid/net/Uri;
    sget-boolean v0, Lcom/meizu/provider/MzUsageStats;->LOGD:Z

    if-eqz v0, :cond_2

    .line 100
    const-string v0, "MzUsageStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNewSessionId uri: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v6

    .line 104
    .local v3, ID_PROJECTION:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 107
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 109
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 111
    .local v8, sessionId:J
    sget-boolean v0, Lcom/meizu/provider/MzUsageStats;->LOGD:Z

    if-eqz v0, :cond_3

    .line 112
    const-string v0, "MzUsageStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNewSessionId sessionid = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 116
    .end local v8           #sessionId:J
    :cond_4
    :try_start_1
    const-string v0, "MzUsageStats"

    const-string v1, "getNewSessionId returned no rows!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_5
    const-string v0, "MzUsageStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNewSessionId failed with uri "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 119
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getValidPackageID(Landroid/content/Context;)J
    .locals 11
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, packageName:Ljava/lang/String;
    sget-object v0, Lcom/meizu/provider/MzUsageStats;->MZ_US_PACKAGEINFO_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 204
    .local v9, uriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 205
    .local v2, uri:Landroid/net/Uri;
    sget-boolean v0, Lcom/meizu/provider/MzUsageStats;->LOGD:Z

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "MzUsageStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getValidPackageID packagename = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v10

    .line 209
    .local v3, ID_PROJECTION:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package_name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, packageSelect:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 214
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 216
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 224
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 227
    :goto_0
    return-wide v0

    .line 219
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/meizu/provider/MzUsageStats;->LOGD:Z

    if-eqz v0, :cond_2

    .line 220
    const-string v0, "MzUsageStats"

    const-string v1, "getValidPackageID returned no rows!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_3
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static insertNewOperationWithProperty(Landroid/content/Context;IJLjava/lang/String;Ljava/util/Map;J)J
    .locals 13
    .parameter "context"
    .parameter "level"
    .parameter "SessionID"
    .parameter "operationDesc"
    .parameter
    .parameter "pkID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 139
    .local p5, property:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/meizu/provider/MzUsageStats;->dataShouldCollect(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 140
    sget-boolean v8, Lcom/meizu/provider/MzUsageStats;->LOGD:Z

    if-eqz v8, :cond_0

    .line 141
    const-string v8, "MzUsageStats"

    const-string v9, "insertNewOperationWithProperty data Should not Collect!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    const-wide/16 v8, -0x1

    .line 192
    :goto_0
    return-wide v8

    .line 145
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-gtz v8, :cond_3

    .line 146
    sget-boolean v8, Lcom/meizu/provider/MzUsageStats;->LOGD:Z

    if-eqz v8, :cond_2

    .line 147
    const-string v8, "MzUsageStats"

    const-string v9, "insertNewOperationWithProperty,sessionId is invalid!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 152
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, p6, v8

    if-gez v8, :cond_4

    .line 153
    const-wide/16 v8, -0x1

    goto :goto_0

    .line 156
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v5, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v8, Lcom/meizu/provider/MzUsageStats;->MZ_US_OPERATION_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 160
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v8, "operation"

    move-object/from16 v0, p4

    invoke-virtual {v1, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 161
    const-string v8, "level"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 162
    const-string v8, "session_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 163
    const-string v8, "package_name"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 164
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    if-eqz p5, :cond_5

    .line 167
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 168
    .local v6, propertyKey:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 169
    sget-object v8, Lcom/meizu/provider/MzUsageStats;->MZ_US_PROPERTY_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 171
    const-string v8, "operation_id"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 172
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    .local v2, desc:Ljava/lang/String;
    const-string v8, "property_description"

    invoke-virtual {v1, v8, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 174
    const-string v8, "property_values"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 176
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    .end local v2           #desc:Ljava/lang/String;
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6           #propertyKey:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    const/4 v7, 0x0

    .line 182
    .local v7, results:[Landroid/content/ContentProviderResult;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "mzusagestats"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 192
    if-eqz v7, :cond_6

    const/4 v8, 0x0

    aget-object v8, v7, v8

    iget-object v8, v8, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    goto/16 :goto_0

    .line 184
    :catch_0
    move-exception v3

    .line 185
    .local v3, e:Landroid/os/RemoteException;
    const-string v8, "MzUsageStats"

    const-string v9, "%s: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-wide/16 v8, 0x0

    goto/16 :goto_0

    .line 187
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 188
    .local v3, e:Landroid/content/OperationApplicationException;
    const-string v8, "MzUsageStats"

    const-string v9, "%s: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-wide/16 v8, 0x0

    goto/16 :goto_0

    .line 192
    .end local v3           #e:Landroid/content/OperationApplicationException;
    :cond_6
    const-wide/16 v8, 0x0

    goto/16 :goto_0
.end method

.method public static setDebug(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 267
    if-nez p0, :cond_0

    const-string v0, "MzUsageStats"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/meizu/provider/MzUsageStats;->LOGD:Z

    .line 268
    return-void

    .line 267
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateUsageStatsWhiteList(Landroid/content/Context;Ljava/util/Set;)Z
    .locals 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, packagelist:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 237
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v3, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Lcom/meizu/provider/MzUsageStats;->MZ_US_PACKAGEINFO_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 241
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "need_record"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 242
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 245
    sget-object v6, Lcom/meizu/provider/MzUsageStats;->MZ_US_WHITELIST_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 246
    const-string v6, "package_name"

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 247
    const-string v6, "need_record"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 248
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mzusagestats"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    :goto_1
    return v4

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "MzUsageStats"

    const-string v7, "%s: %s"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 257
    goto :goto_1

    .line 258
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 259
    .local v1, e:Landroid/content/OperationApplicationException;
    const-string v6, "MzUsageStats"

    const-string v7, "%s: %s"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 261
    goto :goto_1
.end method
