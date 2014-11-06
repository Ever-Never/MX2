.class Lcom/android/server/AppOpsService$DialogItem;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogItem"
.end annotation


# instance fields
.field public code:I

.field public dialog:Landroid/app/AlertDialog;

.field public opGroup:I

.field public openOrClose:Z

.field public pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field public uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;ILandroid/app/AlertDialog;IILjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "code"
    .parameter "dAlertDialog"
    .parameter "opGroup"
    .parameter "uid"
    .parameter "pkg"
    .parameter "openOrClose"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/AppOpsService$DialogItem;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p2, p0, Lcom/android/server/AppOpsService$DialogItem;->code:I

    .line 136
    iput-object p3, p0, Lcom/android/server/AppOpsService$DialogItem;->dialog:Landroid/app/AlertDialog;

    .line 137
    iput p4, p0, Lcom/android/server/AppOpsService$DialogItem;->opGroup:I

    .line 138
    iput p5, p0, Lcom/android/server/AppOpsService$DialogItem;->uid:I

    .line 139
    iput-object p6, p0, Lcom/android/server/AppOpsService$DialogItem;->pkg:Ljava/lang/String;

    .line 140
    iput-boolean p7, p0, Lcom/android/server/AppOpsService$DialogItem;->openOrClose:Z

    .line 141
    return-void
.end method
