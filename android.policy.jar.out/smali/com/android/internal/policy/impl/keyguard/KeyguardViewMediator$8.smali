.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$8;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->initAccountListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 1979
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 3
    .parameter "accounts"

    .prologue
    .line 1982
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mFlymeLogined:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v1

    .line 1983
    .local v1, oldState:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->updateAccountState()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1984
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mFlymeLogined:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$8;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mFlymeLogined:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1986
    :try_start_0
    const-string v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/widget/ILockSettings;->resetPasswordLeftTime()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1991
    :cond_0
    :goto_0
    return-void

    .line 1987
    :catch_0
    move-exception v0

    .line 1988
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
