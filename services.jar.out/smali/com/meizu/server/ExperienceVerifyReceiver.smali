.class public Lcom/meizu/server/ExperienceVerifyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExperienceVerifyReceiver.java"


# static fields
.field private static final IMEI_DIR:Ljava/lang/String; = "/sdcard/imei"

.field private static final IMEI_SYSTEM_DIR:Ljava/lang/String; = "/system/etc/imei"

.field private static final PUBLIC_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDVLika5jAfSwsuJsiXON2Xj+e3DndWkqpGvmbN\nR3aEZ9vaqjvTa6UzzX5OLRRDSZpnbNTpq+hipF9WRACNNGE6jPW9dt0Mtt9YfDiYLWUX90j7CuKJ\nfIaBtig2tSdbVqLmooYCLKdop5Jxu7/7GqUaUasXeXxFmxa9bPYmUjVdVQIDAQAB"

.field private static final TAG:Ljava/lang/String; = "RSACoder"


# instance fields
.field private mAvaliable:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/server/ExperienceVerifyReceiver;->mAvaliable:Z

    return-void
.end method

.method private addWindow()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 182
    iget-object v4, p0, Lcom/meizu/server/ExperienceVerifyReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 183
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090129

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, inflateView:Landroid/view/View;
    iget-object v4, p0, Lcom/meizu/server/ExperienceVerifyReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 185
    .local v2, wm:Landroid/view/WindowManager;
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 187
    .local v3, wmParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x7e0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 188
    const/4 v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 189
    const/16 v4, 0x11

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 190
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 191
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 193
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 194
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 196
    invoke-interface {v2, v0, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    return-void
.end method

.method private createOriginalFileSha1(Ljava/lang/String;)V
    .locals 7
    .parameter "message"

    .prologue
    .line 115
    new-instance v2, Ljava/io/File;

    const-string v5, "/sdcard/imei-orginal.txt"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, mFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_0

    .line 119
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 120
    const-string v5, "RSACoder"

    const-string v6, "file created"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :cond_0
    :goto_0
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 128
    .local v4, stream:Ljava/io/FileOutputStream;
    move-object v3, p1

    .line 129
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 130
    .local v0, buf:[B
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 131
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 138
    .end local v0           #buf:[B
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, e:Ljava/io/IOException;
    const-string v5, "RSACoder"

    const-string v6, "Could not create close_reboot_time.txt"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v5, "RSACoder"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 132
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "RSACoder"

    const-string v6, "Error on writeFilToSD."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private getImei()Ljava/lang/String;
    .locals 5

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, deviceId:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/server/ExperienceVerifyReceiver;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 175
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    const-string v2, "RSACoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current imei: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-object v0
.end method

.method private initFile()V
    .locals 14

    .prologue
    .line 53
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v11, "/sdcard/imei"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, filePath:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 56
    new-instance v3, Ljava/io/File;

    .end local v3           #filePath:Ljava/io/File;
    const-string v11, "/system/etc/imei"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .restart local v3       #filePath:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 113
    .end local v3           #filePath:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 62
    .restart local v3       #filePath:Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    .line 64
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v4, imeiBuffer:Ljava/lang/StringBuffer;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .local v10, signBuffer:Ljava/lang/StringBuffer;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 70
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .local v1, bufferedReader:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 71
    .local v8, lineNumber:I
    const-string v11, "RSACoder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lineNumber: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v9, 0x0

    .line 75
    .local v9, linecount:I
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 76
    const-string v11, "RSACoder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "line: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-ge v9, v8, :cond_2

    .line 78
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 80
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 87
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #lineNumber:I
    .end local v9           #linecount:I
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 88
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    .local v2, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v11, "RSACoder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading data file"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    if-eqz v0, :cond_3

    .line 93
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 99
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, imeiList:Ljava/lang/String;
    invoke-direct {p0}, Lcom/meizu/server/ExperienceVerifyReceiver;->getImei()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, imeiString:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 103
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v5, v11}, Lcom/meizu/server/ExperienceVerifyReceiver;->proccessVerify(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 107
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #filePath:Ljava/io/File;
    .end local v4           #imeiBuffer:Ljava/lang/StringBuffer;
    .end local v5           #imeiList:Ljava/lang/String;
    .end local v6           #imeiString:Ljava/lang/String;
    .end local v10           #signBuffer:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v2

    .line 108
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "RSACoder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error on writeFile. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 85
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v3       #filePath:Ljava/io/File;
    .restart local v4       #imeiBuffer:Ljava/lang/StringBuffer;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v8       #lineNumber:I
    .restart local v9       #linecount:I
    .restart local v10       #signBuffer:Ljava/lang/StringBuffer;
    :cond_4
    :try_start_6
    const-string v11, "RSACoder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "signBuffer: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v11, "RSACoder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "imeiBuffer: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 91
    if-eqz v1, :cond_5

    .line 93
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_5
    :goto_5
    move-object v0, v1

    .line 97
    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 91
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #lineNumber:I
    .end local v9           #linecount:I
    :catchall_0
    move-exception v11

    :goto_6
    if-eqz v0, :cond_6

    .line 93
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 91
    :cond_6
    :goto_7
    :try_start_9
    throw v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 94
    :catch_2
    move-exception v12

    goto :goto_7

    .local v2, e:Ljava/io/IOException;
    :catch_3
    move-exception v11

    goto/16 :goto_4

    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v8       #lineNumber:I
    .restart local v9       #linecount:I
    :catch_4
    move-exception v11

    goto :goto_5

    .line 91
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #lineNumber:I
    .end local v9           #linecount:I
    :catchall_1
    move-exception v11

    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    goto :goto_6

    .line 87
    :catch_5
    move-exception v2

    goto/16 :goto_3
.end method

.method private proccessVerify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "imei"
    .parameter "sign"

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 142
    .local v0, data:[B
    if-nez v0, :cond_1

    .line 170
    .end local v0           #data:[B
    :cond_0
    :goto_0
    return-void

    .line 146
    .restart local v0       #data:[B
    :cond_1
    :try_start_1
    const-string v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDVLika5jAfSwsuJsiXON2Xj+e3DndWkqpGvmbN\nR3aEZ9vaqjvTa6UzzX5OLRRDSZpnbNTpq+hipF9WRACNNGE6jPW9dt0Mtt9YfDiYLWUX90j7CuKJ\nfIaBtig2tSdbVqLmooYCLKdop5Jxu7/7GqUaUasXeXxFmxa9bPYmUjVdVQIDAQAB"

    invoke-static {v0, v3, p2}, Lcom/meizu/server/RSACoder;->verify([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 147
    .local v2, status:Z
    const-string v3, "RSACoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verify: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-eqz v2, :cond_0

    .line 149
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/meizu/server/ExperienceVerifyReceiver;->mAvaliable:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 153
    .end local v2           #status:Z
    :catch_0
    move-exception v1

    .line 156
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 159
    .end local v0           #data:[B
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 162
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 167
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/server/ExperienceVerifyReceiver;->mContext:Landroid/content/Context;

    .line 38
    const-string v0, "RSACoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v0, "ro.build.trial"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/meizu/server/ExperienceVerifyReceiver;->addWindow()V

    .line 48
    :cond_0
    return-void
.end method
