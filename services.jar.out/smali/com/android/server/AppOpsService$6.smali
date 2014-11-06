.class Lcom/android/server/AppOpsService$6;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .locals 0
    .parameter

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/android/server/AppOpsService$6;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/server/AppOpsService$6;->this$0:Lcom/android/server/AppOpsService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    #calls: Lcom/android/server/AppOpsService;->update(Landroid/content/DialogInterface;ZZ)V
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/AppOpsService;->access$400(Lcom/android/server/AppOpsService;Landroid/content/DialogInterface;ZZ)V

    .line 1609
    return-void
.end method
