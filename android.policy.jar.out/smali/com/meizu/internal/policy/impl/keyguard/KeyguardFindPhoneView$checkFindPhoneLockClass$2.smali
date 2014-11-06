.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$2;
.super Ljava/lang/Object;
.source "KeyguardFindPhoneView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;

.field final synthetic val$mGetNameError:I


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$2;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;

    iput p2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$2;->val$mGetNameError:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 539
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;

    invoke-direct {v0}, Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;-><init>()V

    .line 540
    .local v0, result:Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;
    iget v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$2;->val$mGetNameError:I

    iput v1, v0, Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;->mErrorCode:I

    .line 541
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$2;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;

    invoke-virtual {v1, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->onFindPhoneLockChangedResponse(Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;)V

    .line 543
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$2;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$2;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 545
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$2;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;

    #getter for: Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;->access$300(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 547
    :cond_0
    return-void
.end method
