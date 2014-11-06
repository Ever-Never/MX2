.class Landroid/webkit/DownloadHandler;
.super Landroid/os/Handler;
.source "DownloadHandler.java"


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final CONTENT_DISPOSITION_PATTERN2:Ljava/util/regex/Pattern; = null

.field public static final DEFAULT_APK_SUBDIR:Ljava/lang/String; = "/Download/APK"

.field public static final DEFAULT_AUDIO_SUBDIR:Ljava/lang/String; = "/Download/Music"

.field public static final DEFAULT_DL_BINARY_EXTENSION:Ljava/lang/String; = ".bin"

.field public static final DEFAULT_DL_FILENAME:Ljava/lang/String; = "downloadfile"

.field public static final DEFAULT_DL_HTML_EXTENSION:Ljava/lang/String; = ".html"

.field public static final DEFAULT_DL_SUBDIR:Ljava/lang/String; = "/Download"

.field public static final DEFAULT_DL_TEXT_EXTENSION:Ljava/lang/String; = ".txt"

.field public static final DEFAULT_IMAGE_SUBDIR:Ljava/lang/String; = "/Download/Photo"

.field public static final DEFAULT_RAR_SUBDIR:Ljava/lang/String; = "/Download"

.field public static final DEFAULT_VIDEO_SUBDIR:Ljava/lang/String; = "/Download/Video"

.field private static final FILENAME_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final FILENAME_SEQUENCE_SEPARATOR:Ljava/lang/String; = "-"

.field private static final LOGTAG:Ljava/lang/String; = "DownloadHandler"

.field private static mChineseDetector:Lcom/meizu/util/ChineseDetector;

.field private static final projection:[Ljava/lang/String;

.field public static sRandom:Ljava/util/Random;


# instance fields
.field private mContentDisposition:Ljava/lang/String;

.field private mContentLength:J

.field private final mContext:Landroid/content/Context;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDownloading:Z

.field private mFilePath:Ljava/lang/String;

.field private mFilename:Ljava/lang/String;

.field private mId:J

.field private mMimeType:Ljava/lang/String;

.field private mObserver:Landroid/database/ContentObserver;

.field private mReceiveLength:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/DownloadHandler;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 63
    const-string v0, "attachment;\\s*filename\\s*[^=]=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/DownloadHandler;->CONTENT_DISPOSITION_PATTERN2:Ljava/util/regex/Pattern;

    .line 66
    const-string v0, ".*;\\s*filename\\s*=\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/DownloadHandler;->FILENAME_PATTERN:Ljava/util/regex/Pattern;

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Landroid/webkit/DownloadHandler;->sRandom:Ljava/util/Random;

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/DownloadHandler;->projection:[Ljava/lang/String;

    .line 386
    new-instance v0, Lcom/meizu/util/ChineseDetector;

    invoke-direct {v0}, Lcom/meizu/util/ChineseDetector;-><init>()V

    sput-object v0, Landroid/webkit/DownloadHandler;->mChineseDetector:Lcom/meizu/util/ChineseDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .parameter "context"
    .parameter "url"
    .parameter "contentDisposition"
    .parameter "mimeType"
    .parameter "contentLength"

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/DownloadHandler;->mId:J

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/DownloadHandler;->mContentLength:J

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/DownloadHandler;->mReceiveLength:J

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/DownloadHandler;->mFilename:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/DownloadHandler;->mDownloading:Z

    .line 136
    new-instance v0, Landroid/webkit/DownloadHandler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/webkit/DownloadHandler$1;-><init>(Landroid/webkit/DownloadHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/webkit/DownloadHandler;->mObserver:Landroid/database/ContentObserver;

    .line 87
    iput-object p1, p0, Landroid/webkit/DownloadHandler;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Landroid/webkit/DownloadHandler;->mUrl:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Landroid/webkit/DownloadHandler;->mContentDisposition:Ljava/lang/String;

    .line 90
    iput-object p4, p0, Landroid/webkit/DownloadHandler;->mMimeType:Ljava/lang/String;

    .line 91
    iput-wide p5, p0, Landroid/webkit/DownloadHandler;->mContentLength:J

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3, p4}, Landroid/webkit/DownloadHandler;->chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v9, v0, 0x1

    .line 96
    .local v9, index:I
    if-lez v9, :cond_0

    .line 97
    iget-object v0, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/DownloadHandler;->mFilename:Ljava/lang/String;

    .line 100
    :cond_0
    iget-object v0, p0, Landroid/webkit/DownloadHandler;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Landroid/webkit/DownloadHandler;->mDownloadManager:Landroid/app/DownloadManager;

    .line 101
    iget-object v0, p0, Landroid/webkit/DownloadHandler;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 102
    iget-object v0, p0, Landroid/webkit/DownloadHandler;->mDownloadManager:Landroid/app/DownloadManager;

    iget-object v1, p0, Landroid/webkit/DownloadHandler;->mFilename:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/DownloadHandler;->mFilename:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/webkit/DownloadHandler;->mMimeType:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    iget-wide v6, p0, Landroid/webkit/DownloadHandler;->mContentLength:J

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addNonDwnldmngrDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/DownloadHandler;->mId:J

    .line 103
    invoke-direct {p0}, Landroid/webkit/DownloadHandler;->registerContentObserver()V

    .line 104
    const-string v0, "DownloadHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserFrame downloadByPost mUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/DownloadHandler;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "DownloadHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserFrame downloadByPost mContentDisposition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/DownloadHandler;->mContentDisposition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v0, "DownloadHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserFrame downloadByPost mMimeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/DownloadHandler;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v0, "DownloadHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserFrame downloadByPost mContentLength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/webkit/DownloadHandler;->mContentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v0, "DownloadHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserFrame downloadByPost mFilePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v0, "DownloadHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserFrame downloadByPost mFilename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/DownloadHandler;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/DownloadHandler;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/webkit/DownloadHandler;->getMyDownloadsUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/webkit/DownloadHandler;->projection:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/DownloadHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/webkit/DownloadHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Landroid/webkit/DownloadHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Landroid/webkit/DownloadHandler;->mDownloading:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkit/DownloadHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method private chooseDefaultDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 477
    if-eqz p1, :cond_6

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    const-string v0, "/Download/Photo"

    .line 495
    :goto_0
    return-object v0

    .line 480
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    const-string v0, "/Download/Music"

    goto :goto_0

    .line 482
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    const-string v0, "/Download/Video"

    goto :goto_0

    .line 484
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/rar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-rar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-rar-compressed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 488
    :cond_3
    const-string v0, "/Download"

    goto :goto_0

    .line 489
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 490
    const-string v0, "/Download/APK"

    goto :goto_0

    .line 492
    :cond_5
    const-string v0, "/Download"

    goto :goto_0

    .line 495
    :cond_6
    const-string v0, "/Download"

    goto :goto_0
.end method

.method private static chooseExtensionFromFilename(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "mimeType"
    .parameter "filename"
    .parameter "dotIndex"

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, extension:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 437
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 438
    .local v1, lastDotIndex:I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, typeFromExt:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 441
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/webkit/DownloadHandler;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 444
    .end local v1           #lastDotIndex:I
    .end local v2           #typeFromExt:Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 445
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 447
    :cond_2
    return-object v0
.end method

.method private static chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "mimeType"
    .parameter "useDefaults"

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, extension:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 415
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_0
    if-nez v0, :cond_1

    .line 421
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 422
    const-string/jumbo v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    const-string v0, ".html"

    .line 431
    :cond_1
    :goto_0
    return-object v0

    .line 424
    :cond_2
    if-eqz p1, :cond_1

    .line 425
    const-string v0, ".txt"

    goto :goto_0

    .line 427
    :cond_3
    if-eqz p1, :cond_1

    .line 428
    const-string v0, ".bin"

    goto :goto_0
.end method

.method private chooseFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "url"
    .parameter "contentLocation"
    .parameter "contentDisposition"
    .parameter "mimeType"

    .prologue
    .line 207
    const/4 v5, 0x0

    .line 209
    .local v5, filename:Ljava/lang/String;
    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    .line 210
    invoke-direct {p0, p3}, Landroid/webkit/DownloadHandler;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    if-eqz v5, :cond_1

    .line 212
    const/16 v9, 0x2f

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 213
    .local v6, index:I
    if-lez v6, :cond_0

    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 217
    :cond_0
    const-string v9, "\'\'"

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 218
    if-lez v6, :cond_1

    .line 219
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, encodeName:Ljava/lang/String;
    add-int/lit8 v9, v6, 0x2

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 222
    :try_start_0
    invoke-static {v5, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 230
    .end local v3           #encodeName:Ljava/lang/String;
    .end local v6           #index:I
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    if-eqz p2, :cond_2

    .line 231
    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, decodedContentLocation:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const/16 v9, 0x3f

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_2

    .line 235
    const/16 v9, 0x2f

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 236
    .restart local v6       #index:I
    if-lez v6, :cond_a

    .line 237
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 245
    .end local v0           #decodedContentLocation:Ljava/lang/String;
    .end local v6           #index:I
    :cond_2
    :goto_1
    if-nez v5, :cond_4

    .line 246
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, decodedUrl:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 249
    const/16 v9, 0x3f

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 250
    .local v7, location:I
    if-lez v7, :cond_3

    .line 251
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 253
    :cond_3
    const/16 v9, 0x2f

    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 254
    .restart local v6       #index:I
    if-lez v6, :cond_4

    .line 255
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 261
    .end local v1           #decodedUrl:Ljava/lang/String;
    .end local v6           #index:I
    .end local v7           #location:I
    :cond_4
    if-nez v5, :cond_5

    .line 262
    const-string v5, "downloadfile"

    .line 265
    :cond_5
    if-eqz v5, :cond_6

    .line 266
    invoke-direct {p0, v5}, Landroid/webkit/DownloadHandler;->encodeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 269
    :cond_6
    if-eqz v5, :cond_7

    .line 270
    invoke-direct {p0, v5}, Landroid/webkit/DownloadHandler;->decodeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 273
    :cond_7
    if-eqz v5, :cond_9

    .line 274
    const/4 v4, 0x0

    .line 275
    .local v4, extension:Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 276
    .local v2, dotIndex:I
    if-gez v2, :cond_b

    .line 277
    const/4 v9, 0x1

    invoke-static {p4, v9}, Landroid/webkit/DownloadHandler;->chooseExtensionFromMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 283
    :goto_2
    invoke-direct {p0, v4}, Landroid/webkit/DownloadHandler;->getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, typeFromExt:Ljava/lang/String;
    if-eqz v8, :cond_8

    invoke-virtual {v8, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 285
    move-object p4, v8

    .line 288
    :cond_8
    invoke-direct {p0, v5, p4, v4}, Landroid/webkit/DownloadHandler;->chooseUniqueFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 291
    .end local v2           #dotIndex:I
    .end local v4           #extension:Ljava/lang/String;
    .end local v8           #typeFromExt:Ljava/lang/String;
    :cond_9
    return-object v5

    .line 239
    .restart local v0       #decodedContentLocation:Ljava/lang/String;
    .restart local v6       #index:I
    :cond_a
    move-object v5, v0

    goto :goto_1

    .line 279
    .end local v0           #decodedContentLocation:Ljava/lang/String;
    .end local v6           #index:I
    .restart local v2       #dotIndex:I
    .restart local v4       #extension:Ljava/lang/String;
    :cond_b
    invoke-static {p4, v5, v2}, Landroid/webkit/DownloadHandler;->chooseExtensionFromFilename(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 280
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 223
    .end local v2           #dotIndex:I
    .end local v4           #extension:Ljava/lang/String;
    .restart local v3       #encodeName:Ljava/lang/String;
    .restart local v6       #index:I
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

.method private chooseOneEncoding([B)Ljava/lang/String;
    .locals 4
    .parameter "byteBuffer"

    .prologue
    .line 388
    array-length v2, p1

    if-gtz v2, :cond_1

    .line 389
    const-string v0, "UTF-8"

    .line 402
    :cond_0
    :goto_0
    return-object v0

    .line 391
    :cond_1
    sget-object v2, Landroid/webkit/DownloadHandler;->mChineseDetector:Lcom/meizu/util/ChineseDetector;

    array-length v3, p1

    invoke-virtual {v2, p1, v3}, Lorg/mozilla/intl/chardet/nsPSMDetector;->HandleData([BI)Z

    .line 392
    sget-object v2, Landroid/webkit/DownloadHandler;->mChineseDetector:Lcom/meizu/util/ChineseDetector;

    invoke-virtual {v2}, Lorg/mozilla/intl/chardet/nsPSMDetector;->DataEnd()V

    .line 393
    sget-object v2, Landroid/webkit/DownloadHandler;->mChineseDetector:Lcom/meizu/util/ChineseDetector;

    invoke-virtual {v2}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Reset()V

    .line 395
    sget-object v2, Landroid/webkit/DownloadHandler;->mChineseDetector:Lcom/meizu/util/ChineseDetector;

    invoke-virtual {v2}, Lcom/meizu/util/ChineseDetector;->getFlagAndReset()Z

    move-result v1

    .line 398
    .local v1, result:Z
    const-string v0, "UTF-8"

    .line 399
    .local v0, resStr:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 400
    sget-object v2, Landroid/webkit/DownloadHandler;->mChineseDetector:Lcom/meizu/util/ChineseDetector;

    invoke-virtual {v2}, Lcom/meizu/util/ChineseDetector;->getCharsetResult()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private chooseUniqueFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "filename"
    .parameter "mimeType"
    .parameter "extension"

    .prologue
    .line 451
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryMzInternal()Ljava/io/File;

    move-result-object v0

    .line 452
    .local v0, base:Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p2}, Landroid/webkit/DownloadHandler;->chooseDefaultDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, dir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v2, dirFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1

    .line 455
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 457
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 458
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, fullFilename:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    move-object v4, v3

    .line 473
    .end local v3           #fullFilename:Ljava/lang/String;
    .local v4, fullFilename:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 462
    .end local v4           #fullFilename:Ljava/lang/String;
    .restart local v3       #fullFilename:Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 463
    const/4 v7, 0x1

    .line 464
    .local v7, sequence:I
    const/4 v6, 0x1

    .local v6, magnitude:I
    :goto_1
    const v8, 0x3b9aca00

    if-ge v6, v8, :cond_5

    .line 465
    const/4 v5, 0x0

    .local v5, iteration:I
    :goto_2
    const/16 v8, 0x9

    if-ge v5, v8, :cond_4

    .line 466
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 467
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    move-object v4, v3

    .line 468
    .end local v3           #fullFilename:Ljava/lang/String;
    .restart local v4       #fullFilename:Ljava/lang/String;
    goto :goto_0

    .line 470
    .end local v4           #fullFilename:Ljava/lang/String;
    .restart local v3       #fullFilename:Ljava/lang/String;
    :cond_3
    sget-object v8, Landroid/webkit/DownloadHandler;->sRandom:Ljava/util/Random;

    invoke-virtual {v8, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    .line 465
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 464
    :cond_4
    mul-int/lit8 v6, v6, 0xa

    goto :goto_1

    .end local v5           #iteration:I
    :cond_5
    move-object v4, v3

    .line 473
    .end local v3           #fullFilename:Ljava/lang/String;
    .restart local v4       #fullFilename:Ljava/lang/String;
    goto :goto_0
.end method

.method private decodeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "title"

    .prologue
    .line 406
    if-eqz p1, :cond_0

    const-string v0, "=?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "?="

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const/4 p1, 0x0

    .line 409
    .end local p1
    :cond_0
    return-object p1
.end method

.method private encodeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "title"

    .prologue
    .line 327
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 328
    :cond_0
    const-string p1, ""

    .line 383
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 332
    .restart local p1
    :cond_2
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 333
    .local v4, lastIndex:I
    if-lez v4, :cond_1

    .line 334
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, filename:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, extension:Ljava/lang/String;
    :try_start_0
    const-string v0, "UTF-8"

    .line 342
    .local v0, decode:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 343
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/webkit/DownloadHandler;->chooseOneEncoding([B)Ljava/lang/String;

    move-result-object v0

    .line 346
    :cond_3
    const-string v1, "ISO-8859-1"

    .line 347
    .local v1, encode:Ljava/lang/String;
    if-eqz v3, :cond_4

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 348
    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-static {v3, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 353
    :cond_4
    const-string v1, "UTF-8"

    .line 354
    if-eqz v3, :cond_5

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 355
    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-static {v3, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 357
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 360
    :cond_5
    const-string v1, "GBK"

    .line 361
    if-eqz v3, :cond_6

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 362
    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-static {v3, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 364
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 367
    :cond_6
    const-string v1, "GB2312"

    .line 368
    if-eqz v3, :cond_7

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 369
    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-static {v3, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 374
    :cond_7
    const-string v1, "Big5"

    .line 375
    if-eqz v3, :cond_1

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 376
    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-static {v3, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto/16 :goto_0

    .line 380
    .end local v0           #decode:Ljava/lang/String;
    .end local v1           #encode:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method private getAllDownloadsUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 168
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Landroid/webkit/DownloadHandler;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "extension"

    .prologue
    .line 295
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 296
    .local v0, lastDotIndex:I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, mimeType:Ljava/lang/String;
    return-object v1
.end method

.method private getMyDownloadsUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 164
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Landroid/webkit/DownloadHandler;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "contentDisposition"

    .prologue
    .line 304
    :try_start_0
    sget-object v2, Landroid/webkit/DownloadHandler;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 305
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 323
    .end local v1           #m:Ljava/util/regex/Matcher;
    :goto_0
    return-object v2

    .line 308
    .restart local v1       #m:Ljava/util/regex/Matcher;
    :cond_0
    sget-object v2, Landroid/webkit/DownloadHandler;->FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    .line 311
    .local v0, end:I
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\"+"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 316
    .end local v0           #end:I
    :cond_1
    sget-object v2, Landroid/webkit/DownloadHandler;->CONTENT_DISPOSITION_PATTERN2:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 318
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 320
    .end local v1           #m:Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    .line 323
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 5

    .prologue
    .line 114
    :try_start_0
    iget-wide v1, p0, Landroid/webkit/DownloadHandler;->mId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/DownloadHandler;->mDownloading:Z

    .line 116
    iget-object v1, p0, Landroid/webkit/DownloadHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0}, Landroid/webkit/DownloadHandler;->getMyDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/webkit/DownloadHandler;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterContentObaserver()V
    .locals 3

    .prologue
    .line 125
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/webkit/DownloadHandler;->mDownloading:Z

    .line 126
    iget-object v1, p0, Landroid/webkit/DownloadHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/DownloadHandler;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public didFinishLoading()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 189
    iget-object v0, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/webkit/DownloadHandler;->mReceiveLength:J

    iget-wide v2, p0, Landroid/webkit/DownloadHandler;->mContentLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-wide v0, p0, Landroid/webkit/DownloadHandler;->mContentLength:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 203
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/webkit/DownloadHandler;->unregisterContentObaserver()V

    goto :goto_0

    .line 196
    :cond_3
    iget-wide v0, p0, Landroid/webkit/DownloadHandler;->mReceiveLength:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    goto :goto_1
.end method

.method public didReceiveData([BI)Z
    .locals 9
    .parameter "data"
    .parameter "length"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    iget-object v5, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v3

    .line 173
    :cond_1
    iget-boolean v5, p0, Landroid/webkit/DownloadHandler;->mDownloading:Z

    if-eqz v5, :cond_0

    .line 174
    const/4 v1, 0x0

    .line 176
    .local v1, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/webkit/DownloadHandler;->mFilePath:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1           #stream:Ljava/io/FileOutputStream;
    .local v2, stream:Ljava/io/FileOutputStream;
    if-eqz v2, :cond_2

    .line 178
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, p1, v5, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 179
    iget-wide v5, p0, Landroid/webkit/DownloadHandler;->mReceiveLength:J

    int-to-long v7, p2

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroid/webkit/DownloadHandler;->mReceiveLength:J

    .line 180
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    move v3, v4

    .line 182
    goto :goto_0

    .line 183
    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v1       #stream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 184
    .local v0, ex:Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 183
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #stream:Ljava/io/FileOutputStream;
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #stream:Ljava/io/FileOutputStream;
    .restart local v1       #stream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
