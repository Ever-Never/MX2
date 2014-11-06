.class Lcom/android/server/AppOpsService$PushDialogItem;
.super Lcom/android/server/AppOpsService$DialogItem;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PushDialogItem"
.end annotation


# instance fields
.field public button1:Landroid/view/View;

.field public button2:Landroid/view/View;

.field public flateView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;ILandroid/app/AlertDialog;IILjava/lang/String;ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "code"
    .parameter "dAlertDialog"
    .parameter "opGroup"
    .parameter "uid"
    .parameter "pkg"
    .parameter "openOrClose"
    .parameter "parent"
    .parameter "view1"
    .parameter "view2"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/AppOpsService$PushDialogItem;->this$0:Lcom/android/server/AppOpsService;

    .line 152
    invoke-direct/range {p0 .. p7}, Lcom/android/server/AppOpsService$DialogItem;-><init>(Lcom/android/server/AppOpsService;ILandroid/app/AlertDialog;IILjava/lang/String;Z)V

    .line 153
    iput-object p8, p0, Lcom/android/server/AppOpsService$PushDialogItem;->flateView:Landroid/view/View;

    .line 154
    iput-object p9, p0, Lcom/android/server/AppOpsService$PushDialogItem;->button1:Landroid/view/View;

    .line 155
    iput-object p10, p0, Lcom/android/server/AppOpsService$PushDialogItem;->button2:Landroid/view/View;

    .line 157
    return-void
.end method
