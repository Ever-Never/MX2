.class abstract Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$checkPasswordClass;
.super Ljava/lang/Thread;
.source "KeyguardSecurityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "checkPasswordClass"
.end annotation


# instance fields
.field private mPasswordStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;


# direct methods
.method public constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "password"

    .prologue
    .line 847
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$checkPasswordClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 848
    iput-object p3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$checkPasswordClass;->mPasswordStr:Ljava/lang/String;

    .line 849
    return-void
.end method


# virtual methods
.method abstract onPassworkLockChangedResponse(Z)V
.end method

.method public run()V
    .locals 3

    .prologue
    .line 855
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$checkPasswordClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;->access$2800(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$checkPasswordClass;->mPasswordStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v0

    .line 856
    .local v0, result:Z
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$checkPasswordClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView;

    new-instance v2, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$checkPasswordClass$1;

    invoke-direct {v2, p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$checkPasswordClass$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardSecurityView$checkPasswordClass;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 861
    return-void
.end method
