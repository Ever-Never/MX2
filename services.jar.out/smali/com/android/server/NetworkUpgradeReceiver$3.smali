.class Lcom/android/server/NetworkUpgradeReceiver$3;
.super Ljava/lang/Object;
.source "NetworkUpgradeReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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
    .line 119
    iput-object p1, p0, Lcom/android/server/NetworkUpgradeReceiver$3;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, -0x1

    .line 124
    invoke-static {}, Lcom/android/server/NetworkUpgradeReceiver;->access$200()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/server/NetworkUpgradeReceiver$3;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    #getter for: Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/NetworkUpgradeReceiver;->access$300(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 126
    .local v0, btn:Landroid/widget/Button;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    :goto_0
    return-void

    .line 128
    .end local v0           #btn:Landroid/widget/Button;
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkUpgradeReceiver$3;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    #getter for: Lcom/android/server/NetworkUpgradeReceiver;->mUpgradeTipsDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/NetworkUpgradeReceiver;->access$300(Lcom/android/server/NetworkUpgradeReceiver;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 129
    .restart local v0       #btn:Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
