.class Landroid/widget/Gallery$3;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Gallery;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method constructor <init>(Landroid/widget/Gallery;)V
    .locals 0
    .parameter

    .prologue
    .line 1515
    iput-object p1, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Landroid/widget/Gallery$3;->this$0:Landroid/widget/Gallery;

    #calls: Landroid/widget/Gallery;->dispatchUnpress()V
    invoke-static {v0}, Landroid/widget/Gallery;->access$700(Landroid/widget/Gallery;)V

    .line 1519
    return-void
.end method
