.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$12;
.super Landroid/os/CountDownTimer;
.source "KeyguardSecurityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$12;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1436
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$12;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mCountdown:Z
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$602(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Z)Z

    .line 1437
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$12;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mKeypadView:Lcom/meizu/widget/LockDigitView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/widget/LockDigitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/widget/LockDigitView;->enableInput()V

    .line 1438
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$12;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mPasswordError:Z
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2402(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Z)Z

    .line 1439
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$12;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->updateInputTips()V

    .line 1440
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$12;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputBox:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$700(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1441
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$12;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mMusicView:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1442
    return-void
.end method

.method public onTick(J)V
    .locals 6
    .parameter "millisUntilFinished"

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$12;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v1, v1

    #setter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->secondsRemaining:I
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4302(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;I)I

    .line 1432
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$12;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mInputTips:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4400(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$12;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104052b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$12;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->secondsRemaining:I
    invoke-static {v5}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$4300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1433
    return-void
.end method
