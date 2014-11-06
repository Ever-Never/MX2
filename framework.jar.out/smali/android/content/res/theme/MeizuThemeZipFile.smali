.class public Landroid/content/res/theme/MeizuThemeZipFile;
.super Ljava/lang/Object;
.source "MeizuThemeZipFile.java"


# instance fields
.field private mZipDefFile:Ljava/util/zip/ZipFile;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipDefFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    .line 102
    :try_start_0
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipDefFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    iput-object v2, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipDefFile:Ljava/util/zip/ZipFile;

    .line 108
    :cond_0
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_1

    .line 110
    :try_start_1
    iget-object v1, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    :goto_1
    iput-object v2, p0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 116
    :cond_1
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 112
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 16
    .parameter "packageName"
    .parameter "filePath"

    .prologue
    .line 19
    const/4 v6, 0x0

    .line 20
    .local v6, iStream:Ljava/io/InputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 21
    .local v10, time1:J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/data/mtheme/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 22
    .local v13, zipFilePath:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/system/mtheme/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 24
    .local v12, zipDefFilePath:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v14, :cond_0

    .line 25
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 27
    new-instance v14, Ljava/util/zip/ZipFile;

    invoke-direct {v14, v13}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 30
    .end local v4           #file:Ljava/io/File;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipDefFile:Ljava/util/zip/ZipFile;

    if-nez v14, :cond_1

    .line 31
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .restart local v4       #file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 33
    new-instance v14, Ljava/util/zip/ZipFile;

    invoke-direct {v14, v12}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipDefFile:Ljava/util/zip/ZipFile;

    .line 36
    .end local v4           #file:Ljava/io/File;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v14, :cond_4

    .line 37
    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_6

    const/4 v7, 0x1

    .line 38
    .local v7, isPath:Z
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/theme/MeizuThemeUtils;->getModelFileName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 46
    .local v9, resPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v14, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 50
    .local v3, entry:Ljava/util/zip/ZipEntry;
    if-eqz v7, :cond_2

    if-nez v3, :cond_2

    const-string v14, "drawable-400dpi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 52
    move-object/from16 v8, p2

    .line 53
    .local v8, newPath:Ljava/lang/String;
    const-string v14, "drawable-400dpi"

    const-string v15, "drawable-sw432dp-400dpi"

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 55
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/theme/MeizuThemeUtils;->getModelFileName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 56
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v14, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 59
    .end local v8           #newPath:Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    .line 61
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/theme/MeizuThemeUtils;->getModelFileName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 62
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v14, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 65
    :cond_3
    if-eqz v3, :cond_4

    .line 66
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v14, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 69
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v7           #isPath:Z
    .end local v9           #resPath:Ljava/lang/String;
    :cond_4
    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipDefFile:Ljava/util/zip/ZipFile;

    if-eqz v14, :cond_5

    .line 71
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/content/res/theme/MeizuThemeUtils;->getModelFileName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, filePathNew:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipDefFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v14, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 78
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_5

    .line 79
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/theme/MeizuThemeZipFile;->mZipDefFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v14, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 96
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #filePathNew:Ljava/lang/String;
    :cond_5
    :goto_1
    return-object v6

    .line 37
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, e:Ljava/util/zip/ZipException;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, delFile:Ljava/io/File;
    if-eqz v1, :cond_5

    .line 86
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 91
    .end local v1           #delFile:Ljava/io/File;
    .end local v2           #e:Ljava/util/zip/ZipException;
    :catchall_0
    move-exception v14

    throw v14

    .line 87
    :catch_1
    move-exception v14

    goto :goto_1

    .line 82
    :catch_2
    move-exception v14

    goto :goto_1
.end method
