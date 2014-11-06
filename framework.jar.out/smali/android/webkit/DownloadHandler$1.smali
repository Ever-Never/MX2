.class Landroid/webkit/DownloadHandler$1;
.super Landroid/database/ContentObserver;
.source "DownloadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/DownloadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/DownloadHandler;


# direct methods
.method constructor <init>(Landroid/webkit/DownloadHandler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 136
    iput-object p1, p0, Landroid/webkit/DownloadHandler$1;->this$0:Landroid/webkit/DownloadHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 139
    iget-object v0, p0, Landroid/webkit/DownloadHandler$1;->this$0:Landroid/webkit/DownloadHandler;

    #getter for: Landroid/webkit/DownloadHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkit/DownloadHandler;->access$200(Landroid/webkit/DownloadHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/DownloadHandler$1;->this$0:Landroid/webkit/DownloadHandler;

    #calls: Landroid/webkit/DownloadHandler;->getMyDownloadsUri()Landroid/net/Uri;
    invoke-static {v1}, Landroid/webkit/DownloadHandler;->access$000(Landroid/webkit/DownloadHandler;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Landroid/webkit/DownloadHandler;->access$100()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 141
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 143
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 145
    .local v8, status:I
    const-string v0, "DownloadHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNonDwnldmngrDownload downloadByPost ContentObserver status := "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/16 v0, 0xc0

    if-eq v8, v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/webkit/DownloadHandler$1;->this$0:Landroid/webkit/DownloadHandler;

    #setter for: Landroid/webkit/DownloadHandler;->mDownloading:Z
    invoke-static {v0, v9}, Landroid/webkit/DownloadHandler;->access$302(Landroid/webkit/DownloadHandler;Z)Z

    .line 158
    .end local v8           #status:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_1
    return-void

    .line 151
    :cond_2
    iget-object v0, p0, Landroid/webkit/DownloadHandler$1;->this$0:Landroid/webkit/DownloadHandler;

    #setter for: Landroid/webkit/DownloadHandler;->mDownloading:Z
    invoke-static {v0, v9}, Landroid/webkit/DownloadHandler;->access$302(Landroid/webkit/DownloadHandler;Z)Z

    .line 152
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Landroid/webkit/DownloadHandler$1;->this$0:Landroid/webkit/DownloadHandler;

    #getter for: Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/DownloadHandler;->access$400(Landroid/webkit/DownloadHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v7, downloadFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
