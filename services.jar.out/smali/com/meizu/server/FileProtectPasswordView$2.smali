.class Lcom/meizu/server/FileProtectPasswordView$2;
.super Ljava/lang/Object;
.source "FileProtectPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/FileProtectPasswordView;->onKeyLeftButtonClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FileProtectPasswordView;


# direct methods
.method constructor <init>(Lcom/meizu/server/FileProtectPasswordView;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/meizu/server/FileProtectPasswordView$2;->this$0:Lcom/meizu/server/FileProtectPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView$2;->this$0:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0}, Lcom/meizu/server/FileProtectPasswordView;->dismiss()V

    .line 311
    return-void
.end method
