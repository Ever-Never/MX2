.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$10;
.super Ljava/lang/Object;
.source "KeyguardSecurityView.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController$MusicInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V
    .locals 0
    .parameter

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$10;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDlnaDeviceChanged(Z)V
    .locals 0
    .parameter "isForgeLocalDevice"

    .prologue
    .line 1119
    return-void
.end method

.method public onDlnaRemoteVolumeChanged(F)V
    .locals 0
    .parameter "remoteVolume"

    .prologue
    .line 1125
    return-void
.end method

.method public onMetaChanged()V
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$10;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->onMetaChanged()V

    .line 1108
    return-void
.end method

.method public onMusicClientClear()V
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$10;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->onMusicClientClear()V

    .line 1130
    return-void
.end method

.method public onPlaystateChanged()V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$10;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    move-result-object v1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$10;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->isSimNeedCheck()Z
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->onPlaystateChanged(Z)V

    .line 1113
    return-void

    .line 1112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
