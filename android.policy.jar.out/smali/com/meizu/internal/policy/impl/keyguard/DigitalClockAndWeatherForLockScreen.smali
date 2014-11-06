.class public Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;
.super Landroid/widget/LinearLayout;
.source "DigitalClockAndWeatherForLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;,
        Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"


# instance fields
.field private clockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private linearLayout:Landroid/widget/LinearLayout;

.field private mAmPm:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mDateBox:Landroid/view/View;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateTextView:Landroid/widget/TextView;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mWeatherImageView:Landroid/widget/ImageView;

.field private mWeekFormatString:Ljava/lang/String;

.field private mWeekTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mLive:Z

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$1;-><init>(Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->setDateFormat()V

    return-void
.end method

.method private addImageViewToClock()V
    .locals 3

    .prologue
    .line 259
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 261
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method private setClockImageList(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "newTime"

    .prologue
    .line 266
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 267
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 268
    .local v1, imageView:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 269
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 323
    :goto_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 266
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :pswitch_0
    if-nez v0, :cond_1

    .line 272
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :goto_2
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    :cond_1
    const v2, 0x1080480

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 279
    :pswitch_1
    const v2, 0x1080481

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 283
    :pswitch_2
    const v2, 0x1080482

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 287
    :pswitch_3
    const v2, 0x1080483

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 291
    :pswitch_4
    const v2, 0x1080484

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 295
    :pswitch_5
    const v2, 0x1080485

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 299
    :pswitch_6
    const v2, 0x1080486

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 303
    :pswitch_7
    const v2, 0x1080487

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 307
    :pswitch_8
    const v2, 0x1080488

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 311
    :pswitch_9
    const v2, 0x1080489

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 315
    :pswitch_a
    const v2, 0x108048c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 327
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_2
    return-void

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mFormat:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;->setShowAmPm(Z)V

    .line 332
    return-void

    .line 330
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 174
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 176
    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mAttached:Z

    if-eqz v1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 178
    :cond_0
    iput-boolean v4, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mAttached:Z

    .line 180
    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mLive:Z

    if-eqz v1, :cond_1

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$FormatChangeObserver;-><init>(Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;)V

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 195
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 198
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 228
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mAttached:Z

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mAttached:Z

    .line 232
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mLive:Z

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 156
    const v0, 0x1020349

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->linearLayout:Landroid/widget/LinearLayout;

    .line 157
    const v0, 0x102034d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mDateTextView:Landroid/widget/TextView;

    .line 158
    const v0, 0x102034c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mWeekTextView:Landroid/widget/TextView;

    .line 159
    const v0, 0x102034e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mWeatherImageView:Landroid/widget/ImageView;

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040598

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mDateFormatString:Ljava/lang/String;

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040599

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mWeekFormatString:Ljava/lang/String;

    .line 162
    const v0, 0x102034a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mDateBox:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mDateBox:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {v0, p0, v1}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    .line 167
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mWeekTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mWeatherImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->setDateFormat()V

    .line 171
    return-void
.end method

.method public setAlpha(I)V
    .locals 6
    .parameter "alpha"

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, child:Landroid/widget/ImageView;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 341
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #child:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 342
    .restart local v0       #child:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 343
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 340
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 348
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 349
    .local v1, colorStateList:Landroid/content/res/ColorStateList;
    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 350
    .local v4, newColorStateList:Landroid/content/res/ColorStateList;
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 351
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 352
    iget-object v5, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;

    invoke-virtual {v5, v4}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 353
    return-void
.end method

.method public setDateBoxOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mDateBox:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    return-void
.end method

.method public setDateBoxVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 356
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mDateBox:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 357
    return-void

    .line 356
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mLive:Z

    .line 336
    return-void
.end method

.method updateTime()V
    .locals 5

    .prologue
    .line 244
    iget-boolean v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mLive:Z

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 247
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->clockList:Ljava/util/ArrayList;

    .line 248
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mFormat:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 249
    .local v0, newTime:Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->setClockImageList(Ljava/lang/CharSequence;)V

    .line 250
    invoke-direct {p0}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->addImageViewToClock()V

    .line 252
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mWeekFormatString:Ljava/lang/String;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, tempString:Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mDateTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mDateFormatString:Ljava/lang/String;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mWeekTextView:Landroid/widget/TextView;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v3, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mAmPm:Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen$AmPm;->setIsMorning(Z)V

    .line 256
    return-void

    .line 255
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->mCalendar:Ljava/util/Calendar;

    .line 240
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/keyguard/DigitalClockAndWeatherForLockScreen;->updateTime()V

    .line 241
    return-void
.end method
