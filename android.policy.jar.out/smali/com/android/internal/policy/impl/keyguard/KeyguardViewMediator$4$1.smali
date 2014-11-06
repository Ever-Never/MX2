.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4$1;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->enableNetworkForFindPhone()V

    .line 1452
    return-void
.end method
