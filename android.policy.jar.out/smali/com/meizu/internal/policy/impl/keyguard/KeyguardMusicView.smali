.class public Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;
.super Landroid/widget/LinearLayout;
.source "KeyguardMusicView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;
    }
.end annotation


# static fields
.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field public static final SERVICECMD:Ljava/lang/String; = "com.android.music.COMMAND"


# instance fields
.field private mArtistTips:Landroid/widget/TextView;

.field private mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

.field private mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

.field private mMusicNext:Landroid/widget/ImageButton;

.field private mMusicPause:Landroid/widget/ImageButton;

.field private mMusicPrev:Landroid/widget/ImageButton;

.field private mMusicTips:Landroid/widget/TextView;

.field private mMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

.field mWaitStartMediaService:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    .line 49
    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

    .line 251
    iput-boolean v3, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mWaitStartMediaService:Z

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109008d

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    const v0, 0x102036a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicTips:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicTips:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    const v0, 0x102036f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mArtistTips:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mArtistTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    const v0, 0x102036c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicPrev:Landroid/widget/ImageButton;

    .line 62
    const v0, 0x102036e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicNext:Landroid/widget/ImageButton;

    .line 63
    const v0, 0x102036d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicPause:Landroid/widget/ImageButton;

    .line 64
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicPrev:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicNext:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-static {p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getInstance(Landroid/content/Context;)Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    .line 69
    return-void
.end method

.method private requeFocusForMusicTips()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->removeCallback(Ljava/lang/Object;)V

    .line 112
    :cond_0
    return-void
.end method

.method public isShowMusicName()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 282
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 283
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 163
    const/4 v0, -0x1

    .line 164
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicPrev:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_2

    .line 165
    const/16 v0, 0x58

    .line 172
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v1, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->sendMediaButtonClick(I)V

    .line 174
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;->userActivity(J)V

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

    invoke-interface {v1, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;->onMusicKeyClick(I)V

    .line 179
    return-void

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicNext:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_3

    .line 167
    const/16 v0, 0x57

    goto :goto_0

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicPause:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 169
    const/16 v0, 0x55

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 288
    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    .line 289
    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

    .line 291
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 78
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 79
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 74
    return-void
.end method

.method public onMetaChanged()V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->updateMusicInfo()V

    .line 184
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->musicWidgetJustShow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getMusicName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getMusicName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->showMusicName(Z)V

    .line 191
    :cond_1
    return-void
.end method

.method public onMusicClientClear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 274
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 275
    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->showMusicName(Z)V

    .line 276
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

    invoke-interface {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;->onMusicVisibleChanged(Z)V

    .line 278
    :cond_0
    return-void
.end method

.method public onNameStateChanged()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 221
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mWaitStartMediaService:Z

    if-eqz v0, :cond_3

    .line 222
    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mWaitStartMediaService:Z

    .line 223
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getMusicName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getMusicName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 226
    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->showMusicName(Z)V

    .line 231
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->updateMusicInfo()V

    .line 249
    :cond_1
    :goto_1
    return-void

    .line 228
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->showMusicName(Z)V

    goto :goto_0

    .line 232
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 233
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->updateMusicInfo()V

    .line 234
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->setPauseButtonImage()V

    .line 235
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getMusicName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getMusicName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->showMusicName(Z)V

    goto :goto_1

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->showMusicName(Z)V

    .line 247
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->updateMusicInfo()V

    goto :goto_1
.end method

.method public onPlaybackComplete()V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->updateMusicInfo()V

    .line 196
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->setPauseButtonImage()V

    .line 197
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getMusicName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getMusicName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->showMusicName(Z)V

    .line 203
    :cond_1
    return-void
.end method

.method public onPlaystateChanged(Z)V
    .locals 1
    .parameter "canShow"

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->updateMusicInfo()V

    .line 208
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->setPauseButtonImage()V

    .line 209
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->showMusicName(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->updateMusicInfo()V

    .line 216
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->setPauseButtonImage()V

    goto :goto_0
.end method

.method public setCallback(Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardViewContainer$KeyguardViewCallback;

    .line 91
    return-void
.end method

.method public setMusicWidgetCallback(Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;)V
    .locals 2
    .parameter "musicLockWidgetCallface"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

    .line 95
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;->onMusicVisibleChanged(Z)V

    .line 99
    :cond_0
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPauseButtonImage()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicPause:Landroid/widget/ImageButton;

    const v1, 0x10802d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicPause:Landroid/widget/ImageButton;

    const v1, 0x10802d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public showMusicName(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const/4 v0, 0x0

    .line 266
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicTips:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-ne v1, p1, :cond_2

    .line 271
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v0

    .line 266
    goto :goto_0

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicTips:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicWidgetCallback:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;

    invoke-interface {v0, p1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView$IMusicWidget;->onMusicVisibleChanged(Z)V

    goto :goto_1

    .line 268
    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public startMediaService()V
    .locals 3

    .prologue
    .line 253
    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mWaitStartMediaService:Z

    if-eqz v1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mWaitStartMediaService:Z

    .line 256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 257
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.music.COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v1, "command"

    const-string v2, "request_info"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public updateMusicInfo()V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    if-nez v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicController:Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicController;->getMusicName()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, musicName:Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/KeyguardMusicView;->mMusicTips:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
