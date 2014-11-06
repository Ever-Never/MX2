.class public Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;
.super Ljava/lang/Object;
.source "KeyguardMusicController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$IRemoteControlDisplayWeak;,
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;,
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;
    }
.end annotation


# static fields
.field private static ATTACH:Z = false

.field public static final CMDNAME:Ljava/lang/String; = "command"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final INTERNAL_CLEAR_MUSIC_TIMEOUT:I = 0x1388

.field private static final MSG_CLEAR_MUSIC_TIMEOUT:I = 0x13f

.field private static final MSG_SET_GENERATION_ID:I = 0x13d

.field private static final MSG_SET_METADATA:I = 0x13c

.field private static final MSG_UPDATE_STATE:I = 0x13b

.field public static final SERVICECMD:Ljava/lang/String; = "com.android.music.COMMAND"

.field private static final TAG:Ljava/lang/String; = "KeyguardMusicController"

.field private static final TAG_KEYGUARD:Ljava/lang/String; = "Keyguard"

.field private static final TAG_MUSIC:Ljava/lang/String; = "LockMusic"

.field private static sInstance:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mClientGeneration:I

.field private mClientIntent:Landroid/app/PendingIntent;

.field private mContext:Landroid/content/Context;

.field private mCurrentPlayState:I

.field private mForceShowMusic:Z

.field private mHandler:Landroid/os/Handler;

.field private mIRCD:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$IRemoteControlDisplayWeak;

.field private mMetadata:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;

.field private mMusicInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicWidgetShowTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer;->DEBUG:Z

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->DEBUG:Z

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->ATTACH:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mForceShowMusic:Z

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMusicWidgetShowTime:J

    .line 81
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMetadata:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;

    .line 84
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mHandler:Landroid/os/Handler;

    .line 157
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mContext:Landroid/content/Context;

    .line 159
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$IRemoteControlDisplayWeak;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$IRemoteControlDisplayWeak;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mIRCD:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$IRemoteControlDisplayWeak;

    .line 160
    iput v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mCurrentPlayState:I

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mClientGeneration:I

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mClientGeneration:I

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->handleMetaChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mForceShowMusic:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->handleMusicClientClear()V

    return-void
.end method

.method static synthetic access$1302(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mClientIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mCurrentPlayState:I

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mCurrentPlayState:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->handlePlaystateChanded()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMetadata:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->sInstance:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->sInstance:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    .line 55
    :cond_0
    sget-object v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->sInstance:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    return-object v0
.end method

.method private getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "id"

    .prologue
    .line 303
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleMetaChanged()V
    .locals 2

    .prologue
    .line 307
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;->onMetaChanged()V

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    return-void
.end method

.method private handleMusicClientClear()V
    .locals 2

    .prologue
    .line 319
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;->onMusicClientClear()V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    return-void
.end method

.method private handlePlaystateChanded()V
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;->onPlaystateChanged()V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    return-void
.end method

.method private registerRemoteControlDisplay()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mAudioManager:Landroid/media/AudioManager;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 209
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "LockMusic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registRemoteControlDisplay,mIRCD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mIRCD:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$IRemoteControlDisplayWeak;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mIRCD:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$IRemoteControlDisplayWeak;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 212
    :cond_2
    return-void
.end method

.method private unregisterRemoteControlDisplay()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 216
    sget-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockMusic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterRemoteControlDisplay,mIRCD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mIRCD:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$IRemoteControlDisplayWeak;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mIRCD:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$IRemoteControlDisplayWeak;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 219
    :cond_1
    return-void
.end method


# virtual methods
.method public cleanForceShowMusic()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mForceShowMusic:Z

    .line 300
    return-void
.end method

.method public getMusicName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMetadata:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->access$700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMusicPlaying()Z
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mCurrentPlayState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public musicWidgetJustShow()Z
    .locals 4

    .prologue
    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMusicWidgetShowTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyguardAttached()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->ATTACH:Z

    .line 191
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->registerRemoteControlDisplay()V

    .line 192
    return-void
.end method

.method public onKeyguardDetached()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->ATTACH:Z

    .line 199
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->unregisterRemoteControlDisplay()V

    .line 200
    return-void
.end method

.method public registerMusicInfoCallback(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeCallback(Ljava/lang/Object;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMusicInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mCurrentPlayState:I

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendMediaButtonClick(I)V
    .locals 7
    .parameter "keyCode"

    .prologue
    const/4 v6, 0x0

    .line 252
    sget-boolean v3, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "LockMusic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMediaButtonClick keyCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ClientIntent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mClientIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mClientIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_1

    .line 256
    const-string v3, "LockMusic"

    const-string v4, "sendMediaButtonClick(): No client is currently registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.music.COMMAND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v3, "command"

    const-string v4, "lock_request_info"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 285
    :goto_0
    return-void

    .line 266
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v6, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 267
    .local v2, keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 270
    :try_start_0
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mClientIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    :goto_1
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2           #keyEvent:Landroid/view/KeyEvent;
    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 277
    .restart local v2       #keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 280
    :try_start_1
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mClientIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "LockMusic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending intent for media button up: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 271
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :catch_1
    move-exception v0

    .line 272
    .restart local v0       #e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "LockMusic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending intent for media button down: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public startMusic()V
    .locals 7

    .prologue
    const/16 v6, 0x13f

    .line 222
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mForceShowMusic:Z

    .line 223
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mClientIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_3

    .line 224
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mClientIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getMusicName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getMusicName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    :cond_0
    sget-boolean v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LockMusic"

    const-string v3, "send msg MSG_CLEAR_MUSIC_TIMEOUT"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    :cond_2
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "LockMusic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending intent for media button down: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 233
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.music.COMMAND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v2, "command"

    const-string v3, "lock_request_info"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->mMusicWidgetShowTime:J

    goto :goto_0
.end method
