.class Landroid/widget/Gallery$WindowRunnnable;
.super Ljava/lang/Object;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method private constructor <init>(Landroid/widget/Gallery;)V
    .locals 0
    .parameter

    .prologue
    .line 2602
    iput-object p1, p0, Landroid/widget/Gallery$WindowRunnnable;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Gallery;Landroid/widget/Gallery$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2602
    invoke-direct {p0, p1}, Landroid/widget/Gallery$WindowRunnnable;-><init>(Landroid/widget/Gallery;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 2606
    iget-object v0, p0, Landroid/widget/Gallery$WindowRunnnable;->this$0:Landroid/widget/Gallery;

    #calls: Landroid/view/View;->getWindowAttachCount()I
    invoke-static {v0}, Landroid/widget/Gallery;->access$2500(Landroid/widget/Gallery;)I

    move-result v0

    iput v0, p0, Landroid/widget/Gallery$WindowRunnnable;->mOriginalAttachCount:I

    .line 2607
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 2610
    iget-object v0, p0, Landroid/widget/Gallery$WindowRunnnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery$WindowRunnnable;->this$0:Landroid/widget/Gallery;

    #calls: Landroid/view/View;->getWindowAttachCount()I
    invoke-static {v0}, Landroid/widget/Gallery;->access$2600(Landroid/widget/Gallery;)I

    move-result v0

    iget v1, p0, Landroid/widget/Gallery$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
