.class public Lcom/android/server/UpgradeAppsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpgradeAppsReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpgradeAppsReceiver"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private upgradeApps()V
    .locals 20

    .prologue
    .line 55
    new-instance v6, Ljava/io/File;

    const-string v15, "/system/etc/appslist"

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1

    .line 57
    const-string v15, "UpgradeAppsReceiver"

    const-string v16, "/system/etc/appslist not exists"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const/4 v13, 0x0

    .line 63
    .local v13, pkgList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 65
    .local v3, bufferedReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v3           #bufferedReader:Ljava/io/BufferedReader;
    .local v4, bufferedReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v13

    .line 72
    if-eqz v4, :cond_2

    .line 74
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 79
    :cond_2
    :goto_1
    if-eqz v13, :cond_0

    :try_start_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_0

    .line 83
    const-string v15, "UpgradeAppsReceiver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "pkgList : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v15, "\\s+"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, all:Ljava/lang/String;
    const-string v15, "\\|"

    invoke-virtual {v1, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 87
    .local v11, list:[Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v14, rList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    .line 89
    move-object v2, v11

    .local v2, arr$:[Ljava/lang/String;
    array-length v10, v2

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v10, :cond_4

    aget-object v12, v2, v8

    .line 90
    .local v12, pkg:Ljava/lang/String;
    const-string v15, "UpgradeAppsReceiver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "pkg : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 89
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 68
    .end local v1           #all:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #bufferedReader:Ljava/io/BufferedReader;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v11           #list:[Ljava/lang/String;
    .end local v12           #pkg:Ljava/lang/String;
    .end local v14           #rList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #bufferedReader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    .line 69
    .local v5, e:Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v15, "UpgradeAppsReceiver"

    const-string v16, "Error reading data file"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    if-eqz v3, :cond_0

    .line 74
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 75
    :catch_1
    move-exception v15

    goto/16 :goto_0

    .line 72
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :goto_4
    if-eqz v3, :cond_3

    .line 74
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 72
    :cond_3
    :goto_5
    :try_start_7
    throw v15
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 116
    :catch_2
    move-exception v5

    .line 117
    .local v5, e:Ljava/lang/Exception;
    :goto_6
    const-string v15, "UpgradeAppsReceiver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updatePermissionsLPw ex: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 94
    .end local v3           #bufferedReader:Ljava/io/BufferedReader;
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v1       #all:Ljava/lang/String;
    .restart local v4       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v11       #list:[Ljava/lang/String;
    .restart local v14       #rList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_6

    .line 95
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_5
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 97
    .restart local v12       #pkg:Ljava/lang/String;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/UpgradeAppsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 99
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_5

    iget v15, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_5

    .line 100
    const-string v15, "UpgradeAppsReceiver"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "pkg : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " not system app"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v7, Ljava/io/File;

    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v7, file2:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/UpgradeAppsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_7

    .line 105
    .end local v7           #file2:Ljava/io/File;
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v5

    .line 106
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_a
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 116
    .end local v1           #all:Ljava/lang/String;
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #list:[Ljava/lang/String;
    .end local v12           #pkg:Ljava/lang/String;
    .end local v14           #rList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_4
    move-exception v5

    move-object v3, v4

    .end local v4           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #bufferedReader:Ljava/io/BufferedReader;
    goto/16 :goto_6

    .line 108
    .end local v3           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v1       #all:Ljava/lang/String;
    .restart local v4       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #list:[Ljava/lang/String;
    .restart local v12       #pkg:Ljava/lang/String;
    .restart local v14       #rList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_5
    move-exception v5

    .line 109
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_7

    .end local v5           #e:Ljava/lang/Exception;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #pkg:Ljava/lang/String;
    :cond_6
    move-object v3, v4

    .line 118
    .end local v4           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #bufferedReader:Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 75
    .end local v1           #all:Ljava/lang/String;
    .end local v11           #list:[Ljava/lang/String;
    .end local v14           #rList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_6
    move-exception v16

    goto/16 :goto_5

    .end local v3           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v4       #bufferedReader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v15

    goto/16 :goto_1

    .line 72
    :catchall_1
    move-exception v15

    move-object v3, v4

    .end local v4           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #bufferedReader:Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 68
    .end local v3           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v4       #bufferedReader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v5

    move-object v3, v4

    .end local v4           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #bufferedReader:Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 48
    const-string v0, "UpgradeAppsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p1, p0, Lcom/android/server/UpgradeAppsReceiver;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/android/server/UpgradeAppsReceiver;->upgradeApps()V

    .line 53
    return-void
.end method
