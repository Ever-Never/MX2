.class Lcom/android/server/NetworkUpgradeReceiver$5;
.super Ljava/lang/Object;
.source "NetworkUpgradeReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkUpgradeReceiver;->showSystemRootDialog()V
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
    .line 205
    iput-object p1, p0, Lcom/android/server/NetworkUpgradeReceiver$5;->this$0:Lcom/android/server/NetworkUpgradeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 210
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 211
    return-void
.end method
