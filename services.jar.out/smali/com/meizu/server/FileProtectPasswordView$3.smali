.class Lcom/meizu/server/FileProtectPasswordView$3;
.super Ljava/lang/Object;
.source "FileProtectPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/FileProtectPasswordView;->onKeyRightButtonClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FileProtectPasswordView;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/server/FileProtectPasswordView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/meizu/server/FileProtectPasswordView$3;->this$0:Lcom/meizu/server/FileProtectPasswordView;

    iput-object p2, p0, Lcom/meizu/server/FileProtectPasswordView$3;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView$3;->val$password:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView$3;->val$password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView$3;->this$0:Lcom/meizu/server/FileProtectPasswordView;

    #getter for: Lcom/meizu/server/FileProtectPasswordView;->mPasswordView:Lcom/meizu/widget/SystemLockView;
    invoke-static {v0}, Lcom/meizu/server/FileProtectPasswordView;->access$000(Lcom/meizu/server/FileProtectPasswordView;)Lcom/meizu/widget/SystemLockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    .line 339
    :cond_0
    return-void
.end method
