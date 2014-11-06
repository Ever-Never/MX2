.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;
.super Ljava/lang/Object;
.source "KeyguardMusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Metadata"
.end annotation


# instance fields
.field private albumTitle:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

.field private trackTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$502(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->artist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->trackTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->albumTitle:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata[artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$Metadata;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
