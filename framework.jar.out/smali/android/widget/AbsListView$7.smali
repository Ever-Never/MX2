.class Landroid/widget/AbsListView$7;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 7939
    iput-object p1, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 7941
    iget-object v0, p0, Landroid/widget/AbsListView$7;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->updateDrag()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$4800(Landroid/widget/AbsListView;)V

    .line 7942
    return-void
.end method
