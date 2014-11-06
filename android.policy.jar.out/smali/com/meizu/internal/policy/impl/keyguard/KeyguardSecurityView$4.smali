.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$4;
.super Ljava/lang/Object;
.source "KeyguardSecurityView.java"

# interfaces
.implements Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;


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
    .line 191
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicKeyClick(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mShowMusicWidgetTime:J
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$900(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateMusicWidgetDelayTime()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$1000(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    .line 209
    :cond_0
    return-void
.end method

.method public onMusicVisibleChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 195
    if-eqz p1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mRestKeypadAsPoint:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 197
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->isSimNeedCheck()Z
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$200(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->setKeypadAsPoint()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$4;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #calls: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->clearInput()V
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$500(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)V

    .line 202
    :cond_1
    return-void
.end method
