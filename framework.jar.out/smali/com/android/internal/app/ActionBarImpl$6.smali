.class Lcom/android/internal/app/ActionBarImpl$6;
.super Landroid/database/ContentObserver;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ActionBarImpl;->setEnabledAdjustSmartBarHeight(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ActionBarImpl;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1618
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$6;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$6;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #calls: Lcom/android/internal/app/ActionBarImpl;->onSmartBarHeightChanged()V
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1700(Lcom/android/internal/app/ActionBarImpl;)V

    .line 1621
    return-void
.end method
