.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$6;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->onWindowChanged()V
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
    .line 1849
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1851
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;

    move-result-object v0

    .line 1853
    .local v0, instance:Lcom/meizu/internal/policy/impl/keyguard/SnapshotHelper;
    return-void
.end method
