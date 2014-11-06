.class Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListViewDragShadowBuilder"
.end annotation


# static fields
.field private static final STATE_ENTER_NORMAL:I = 0x0

.field private static final STATE_ENTER_WARNING:I = 0x1

.field private static final STATE_IDLE:I = -0x1


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundPadding:Landroid/graphics/Rect;

.field private mHeight:I

.field private mHightLightNormal:Landroid/graphics/drawable/Drawable;

.field private mHightLightWarning:Landroid/graphics/drawable/Drawable;

.field private mNeedBackground:Z

.field private mShowPoint:Landroid/graphics/Point;

.field private mState:I

.field private mWidth:I

.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter "view"

    .prologue
    .line 4039
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;-><init>(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;ZLandroid/graphics/Point;)V

    .line 4040
    return-void
.end method

.method public constructor <init>(Lcom/meizu/widget/StaggeredGridView;Landroid/view/View;ZLandroid/graphics/Point;)V
    .locals 11
    .parameter
    .parameter "view"
    .parameter "needBg"
    .parameter "shadowTouchPoint"

    .prologue
    .line 4042
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->this$0:Lcom/meizu/widget/StaggeredGridView;

    .line 4043
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 4033
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 4034
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    .line 4131
    const/4 v6, -0x1

    iput v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mState:I

    .line 4044
    iput-boolean p3, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mNeedBackground:Z

    .line 4045
    iput-object p4, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mShowPoint:Landroid/graphics/Point;

    .line 4046
    if-nez p2, :cond_1

    .line 4088
    :cond_0
    :goto_0
    return-void

    .line 4047
    :cond_1
    if-eqz p3, :cond_3

    .line 4048
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDragViewBackground:I
    invoke-static {p1}, Lcom/meizu/widget/StaggeredGridView;->access$5300(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 4049
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 4050
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4051
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 4052
    .local v4, padding:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 4053
    .local v5, width:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 4054
    .local v1, height:I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mWidth:I

    .line 4055
    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v1

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mHeight:I

    .line 4056
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4058
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDragViewBackgroundFilter:I
    invoke-static {p1}, Lcom/meizu/widget/StaggeredGridView;->access$5400(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    .line 4059
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4061
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDragViewBackgroundDelete:I
    invoke-static {p1}, Lcom/meizu/widget/StaggeredGridView;->access$5500(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    .line 4062
    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mWidth:I

    iget v10, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4069
    .end local v1           #height:I
    .end local v4           #padding:Landroid/graphics/Rect;
    .end local v5           #width:I
    :goto_1
    const/4 v6, 0x0

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mDragScrollY:I
    invoke-static {p1, v6}, Lcom/meizu/widget/StaggeredGridView;->access$5602(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 4070
    iget v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 4073
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 4074
    .local v2, listLocation:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4076
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 4077
    .local v0, dragLocation:[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4079
    const/4 v6, 0x1

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v2, v7

    if-ge v6, v7, :cond_2

    .line 4080
    const/4 v6, 0x1

    aget v6, v2, v6

    const/4 v7, 0x1

    aget v7, v0, v7

    sub-int/2addr v6, v7

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mDragScrollY:I
    invoke-static {p1, v6}, Lcom/meizu/widget/StaggeredGridView;->access$5602(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 4081
    iget v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v3, v6, v7

    .line 4082
    .local v3, maxDragScrollY:I
    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDragScrollY:I
    invoke-static {p1}, Lcom/meizu/widget/StaggeredGridView;->access$5600(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mDragScrollY:I
    invoke-static {p1, v6}, Lcom/meizu/widget/StaggeredGridView;->access$5602(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 4085
    .end local v3           #maxDragScrollY:I
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mHeight:I

    goto/16 :goto_0

    .line 4065
    .end local v0           #dragLocation:[I
    .end local v2           #listLocation:[I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mWidth:I

    .line 4066
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mHeight:I

    goto :goto_1
.end method


# virtual methods
.method public getDragingState()I
    .locals 1

    .prologue
    .line 4138
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mState:I

    return v0
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 4104
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_2

    .line 4105
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mState:I

    if-nez v0, :cond_0

    .line 4106
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mHightLightNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4112
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4113
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDragScrollY:I
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$5600(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4114
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 4115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4126
    :goto_1
    return-void

    .line 4107
    :cond_0
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4108
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mHightLightWarning:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 4110
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 4117
    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDragScrollY:I
    invoke-static {v0}, Lcom/meizu/widget/StaggeredGridView;->access$5600(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 4118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4119
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDragScrollY:I
    invoke-static {v1}, Lcom/meizu/widget/StaggeredGridView;->access$5600(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4120
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 4121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 4123
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 4092
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 4093
    iget v0, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mWidth:I

    iget v1, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 4095
    iget-boolean v0, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mNeedBackground:Z

    if-eqz v0, :cond_0

    .line 4096
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDragOffsetX:I
    invoke-static {v0}, Lcom/meizu/widget/StaggeredGridView;->access$5700(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDragOffsetY:I
    invoke-static {v1}, Lcom/meizu/widget/StaggeredGridView;->access$5800(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDragScrollY:I
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$5600(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 4100
    :goto_0
    return-void

    .line 4098
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDragOffsetX:I
    invoke-static {v0}, Lcom/meizu/widget/StaggeredGridView;->access$5700(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDragOffsetY:I
    invoke-static {v1}, Lcom/meizu/widget/StaggeredGridView;->access$5800(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDragScrollY:I
    invoke-static {v2}, Lcom/meizu/widget/StaggeredGridView;->access$5600(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public setDragingState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 4134
    iput p1, p0, Lcom/meizu/widget/StaggeredGridView$ListViewDragShadowBuilder;->mState:I

    .line 4135
    return-void
.end method
