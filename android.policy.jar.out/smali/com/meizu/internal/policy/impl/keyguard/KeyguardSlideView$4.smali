.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$4;
.super Ljava/lang/Object;
.source "KeyguardSlideView.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDlnaDeviceChanged(Z)V
    .locals 0
    .parameter "isForgeLocalDevice"

    .prologue
    .line 590
    return-void
.end method

.method public onDlnaRemoteVolumeChanged(F)V
    .locals 0
    .parameter "remoteVolume"

    .prologue
    .line 596
    return-void
.end method

.method public onMetaChanged()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->onMetaChanged()V

    .line 579
    return-void
.end method

.method public onMusicClientClear()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->onMusicClientClear()V

    .line 601
    return-void
.end method

.method public onPlaystateChanged()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;->access$600(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSlideView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->onPlaystateChanged(Z)V

    .line 584
    return-void
.end method
