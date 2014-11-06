.class Lcom/android/server/power/PowerManagerService$2;
.super Ljava/lang/Thread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->handleBootCompletedLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1981
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1984
    const/16 v11, 0xc

    new-array v4, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "com.meizu.filemanager"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    const-string v12, "com.meizu.media.music"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    const-string v12, "com.meizu.media.video"

    aput-object v12, v4, v11

    const/4 v11, 0x3

    const-string v12, "com.android.gallery3d"

    aput-object v12, v4, v11

    const/4 v11, 0x4

    const-string v12, "com.android.providers.media"

    aput-object v12, v4, v11

    const/4 v11, 0x5

    const-string v12, "com.android.browser"

    aput-object v12, v4, v11

    const/4 v11, 0x6

    const-string v12, "com.android.email"

    aput-object v12, v4, v11

    const/4 v11, 0x7

    const-string v12, "com.android.soundrecorder"

    aput-object v12, v4, v11

    const/16 v11, 0x8

    const-string v12, "com.android.packageinstaller"

    aput-object v12, v4, v11

    const/16 v11, 0x9

    const-string v12, "com.android.defcontainer"

    aput-object v12, v4, v11

    const/16 v11, 0xa

    const-string v12, "com.android.calendar"

    aput-object v12, v4, v11

    const/16 v11, 0xb

    const-string v12, "com.meizu.notepaper"

    aput-object v12, v4, v11

    .line 1992
    .local v4, packagename:[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1993
    .local v5, pm:Landroid/content/pm/PackageManager;
    if-nez v5, :cond_1

    .line 2039
    :cond_0
    :goto_0
    return-void

    .line 1995
    :cond_1
    const/4 v9, -0x1

    .line 1996
    .local v9, uid:I
    const/4 v10, 0x0

    .line 1998
    .local v10, uidlist:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    array-length v11, v4

    if-ge v2, v11, :cond_4

    .line 1999
    aget-object v11, v4, v2

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v9

    .line 2000
    if-lez v9, :cond_2

    .line 2001
    if-nez v10, :cond_3

    .line 2002
    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 2007
    :cond_2
    :goto_2
    const-string v11, "uid test"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "uid is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "package name is cd "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v4, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2004
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_2

    .line 2010
    :catch_0
    move-exception v11

    .line 2014
    :cond_4
    if-eqz v10, :cond_0

    .line 2015
    const/4 v7, 0x0

    .line 2016
    .local v7, try_count:I
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V

    .line 2017
    .local v6, socket:Landroid/net/LocalSocket;
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v11, "sdcard"

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v11, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v0, address:Landroid/net/LocalSocketAddress;
    move v8, v7

    .line 2018
    .end local v7           #try_count:I
    .local v8, try_count:I
    :goto_3
    add-int/lit8 v7, v8, 0x1

    .end local v8           #try_count:I
    .restart local v7       #try_count:I
    const/16 v11, 0xa

    if-ge v8, v11, :cond_5

    .line 2020
    :try_start_1
    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2029
    :cond_5
    const/16 v11, 0xa

    if-ge v7, v11, :cond_6

    .line 2030
    const/16 v11, 0x1f4

    :try_start_2
    invoke-virtual {v6, v11}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 2031
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 2032
    .local v3, out:Ljava/io/OutputStream;
    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 2033
    .local v1, bytes:[B
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2034
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 2036
    .end local v1           #bytes:[B
    .end local v3           #out:Ljava/io/OutputStream;
    :cond_6
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2037
    :catch_1
    move-exception v11

    goto/16 :goto_0

    .line 2022
    :catch_2
    move-exception v11

    .line 2024
    const-wide/16 v11, 0x3e8

    :try_start_3
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    move v8, v7

    .line 2025
    .end local v7           #try_count:I
    .restart local v8       #try_count:I
    goto :goto_3

    .end local v8           #try_count:I
    .restart local v7       #try_count:I
    :catch_3
    move-exception v11

    move v8, v7

    .end local v7           #try_count:I
    .restart local v8       #try_count:I
    goto :goto_3
.end method
