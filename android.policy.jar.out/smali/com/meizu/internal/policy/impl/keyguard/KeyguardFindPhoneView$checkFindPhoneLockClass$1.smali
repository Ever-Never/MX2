.class Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$1;
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

.field final synthetic val$result:Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$1;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;

    iput-object p2, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$1;->val$result:Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$1;->this$1:Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass$1;->val$result:Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardFindPhoneView$checkFindPhoneLockClass;->onFindPhoneLockChangedResponse(Lcom/android/internal/widget/LockPatternUtils$FindPhoneData;)V

    .line 531
    return-void
.end method
