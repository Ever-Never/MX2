.class Lcom/meizu/widget/RecipientEdit$DirectoryObserver;
.super Landroid/database/ContentObserver;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirectoryObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/meizu/widget/RecipientEdit;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/RecipientEdit;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 3982
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$DirectoryObserver;->this$0:Lcom/meizu/widget/RecipientEdit;

    .line 3983
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3984
    iput-object p2, p0, Lcom/meizu/widget/RecipientEdit$DirectoryObserver;->mHandler:Landroid/os/Handler;

    .line 3985
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x4

    .line 3990
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$DirectoryObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3991
    iget-object v0, p0, Lcom/meizu/widget/RecipientEdit$DirectoryObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3992
    return-void
.end method
