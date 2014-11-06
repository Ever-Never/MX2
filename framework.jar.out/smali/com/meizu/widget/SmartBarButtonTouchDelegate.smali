.class public Lcom/meizu/widget/SmartBarButtonTouchDelegate;
.super Ljava/lang/Object;
.source "SmartBarButtonTouchDelegate.java"


# static fields
.field private static final MAX_HIT_EDGE_COUNT:I = 0x14


# instance fields
.field private mDelegateView:Landroid/view/View;

.field private mDownPosition:I

.field private mLayoutPosition:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "delegateView"

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mLayoutPosition:I

    .line 14
    iput v0, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDownPosition:I

    .line 19
    iput-object p1, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 20
    return-void
.end method

.method private getHitEdgeCount()I
    .locals 3

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mz_smartbar_hit_edge_count"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    :goto_0
    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onHitEdge()V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->getHitEdgeCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 66
    .local v0, hitEdgeCount:I
    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    .line 69
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SMARTBAR_PADDING_ADJUSTMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->saveHitEdgeCount(I)V

    .line 76
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-direct {p0, v0}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->saveHitEdgeCount(I)V

    goto :goto_0
.end method

.method private saveHitEdgeCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mz_smartbar_hit_edge_count"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 53
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 27
    iget-object v4, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mLayoutPosition:I

    if-eqz v4, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 30
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v3, v4

    .line 31
    .local v3, x:I
    if-nez v0, :cond_1

    .line 32
    iput v3, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDownPosition:I

    .line 48
    .end local v0           #action:I
    .end local v3           #x:I
    :cond_0
    :goto_0
    return-void

    .line 33
    .restart local v0       #action:I
    .restart local v3       #x:I
    :cond_1
    if-ne v0, v5, :cond_0

    .line 35
    iget v4, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mLayoutPosition:I

    if-ne v4, v5, :cond_2

    .line 36
    iget-object v4, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v2, v4, 0x4

    .line 37
    .local v2, rightEdge:I
    iget v4, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDownPosition:I

    if-le v4, v2, :cond_0

    if-le v3, v2, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->onHitEdge()V

    goto :goto_0

    .line 41
    .end local v2           #rightEdge:I
    :cond_2
    iget-object v4, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x4

    .line 42
    .local v1, leftEdge:I
    iget v4, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mDownPosition:I

    if-ge v4, v1, :cond_0

    if-ge v3, v1, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->onHitEdge()V

    goto :goto_0
.end method

.method public setLayoutPosition(I)V
    .locals 0
    .parameter "layoutPosition"

    .prologue
    .line 23
    iput p1, p0, Lcom/meizu/widget/SmartBarButtonTouchDelegate;->mLayoutPosition:I

    .line 24
    return-void
.end method
