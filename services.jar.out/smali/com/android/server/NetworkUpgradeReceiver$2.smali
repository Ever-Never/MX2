.class Lcom/android/server/NetworkUpgradeReceiver$2;
.super Ljava/lang/Object;
.source "NetworkUpgradeReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkUpgradeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkUpgradeReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkUpgradeReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/NetworkUpgradeReceiver$2;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 110
    const-string v0, "NetworkUpgradeReceiver"

    const-string v1, "Upgrade later!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/server/NetworkUpgradeReceiver$2;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    const/4 v1, 0x0

    #calls: Lcom/android/server/NetworkUpgradeReceiver;->upGrade(Z)V
    invoke-static {v0, v1}, Lcom/android/server/NetworkUpgradeReceiver;->access$100(Lcom/android/server/NetworkUpgradeReceiver;Z)V

    .line 112
    return-void
.end method
