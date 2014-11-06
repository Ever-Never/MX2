.class Lcom/meizu/security/FileProtectManager$2;
.super Landroid/database/ContentObserver;
.source "FileProtectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/security/FileProtectManager;->registerProtectedFilesChangedListener(Lcom/meizu/security/FileProtectManager$OnChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/security/FileProtectManager;


# direct methods
.method constructor <init>(Lcom/meizu/security/FileProtectManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 551
    iput-object p1, p0, Lcom/meizu/security/FileProtectManager$2;->this$0:Lcom/meizu/security/FileProtectManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$2;->this$0:Lcom/meizu/security/FileProtectManager;

    #getter for: Lcom/meizu/security/FileProtectManager;->mOnChangedListener:Lcom/meizu/security/FileProtectManager$OnChangedListener;
    invoke-static {v0}, Lcom/meizu/security/FileProtectManager;->access$400(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/meizu/security/FileProtectManager$2;->this$0:Lcom/meizu/security/FileProtectManager;

    #getter for: Lcom/meizu/security/FileProtectManager;->mOnChangedListener:Lcom/meizu/security/FileProtectManager$OnChangedListener;
    invoke-static {v0}, Lcom/meizu/security/FileProtectManager;->access$400(Lcom/meizu/security/FileProtectManager;)Lcom/meizu/security/FileProtectManager$OnChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/security/FileProtectManager$OnChangedListener;->onChanged()V

    .line 557
    :cond_0
    return-void
.end method
