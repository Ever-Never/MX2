.class Lcom/android/server/AppOpsService$4;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService;->addWindow(Landroid/content/Context;Landroid/content/Intent;)V
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
    .line 1474
    iput-object p1, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/android/server/AppOpsService$4;->this$0:Lcom/android/server/AppOpsService;

    const/4 v1, 0x1

    #calls: Lcom/android/server/AppOpsService;->removeWindow(ZLandroid/view/View;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/AppOpsService;->access$500(Lcom/android/server/AppOpsService;ZLandroid/view/View;)V

    .line 1480
    return-void
.end method
