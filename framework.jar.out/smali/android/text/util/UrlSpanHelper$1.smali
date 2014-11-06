.class final Landroid/text/util/UrlSpanHelper$1;
.super Ljava/lang/Object;
.source "UrlSpanHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/util/UrlSpanHelper;->showDateTimeDialog(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/CharSequence;

.field final synthetic val$widget:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Landroid/text/util/UrlSpanHelper$1;->val$widget:Landroid/view/View;

    iput-object p2, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventType:Ljava/lang/String;

    iput-object p3, p0, Landroid/text/util/UrlSpanHelper$1;->val$value:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/text/util/UrlSpanHelper$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 100
    iget-object v5, p0, Landroid/text/util/UrlSpanHelper$1;->val$widget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    .local v0, context:Landroid/content/Context;
    packed-switch p2, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 105
    :pswitch_0
    :try_start_0
    const-string v5, "1"

    iget-object v6, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    iget-object v5, p0, Landroid/text/util/UrlSpanHelper$1;->val$value:Ljava/lang/CharSequence;

    #calls: Landroid/text/util/UrlSpanHelper;->subDate(Ljava/lang/CharSequence;)J
    invoke-static {v5}, Landroid/text/util/UrlSpanHelper;->access$000(Ljava/lang/CharSequence;)J

    move-result-wide v2

    .line 107
    .local v2, sTime:J
    #calls: Landroid/text/util/UrlSpanHelper;->createAllDayEvent(JLandroid/content/Context;)V
    invoke-static {v2, v3, v0}, Landroid/text/util/UrlSpanHelper;->access$100(JLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v2           #sTime:J
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 121
    .restart local v2       #sTime:J
    #calls: Landroid/text/util/UrlSpanHelper;->createAllDayEvent(JLandroid/content/Context;)V
    invoke-static {v2, v3, v0}, Landroid/text/util/UrlSpanHelper;->access$100(JLandroid/content/Context;)V

    goto :goto_0

    .line 108
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #sTime:J
    :cond_0
    :try_start_1
    const-string v5, "2"

    iget-object v6, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    iget-object v5, p0, Landroid/text/util/UrlSpanHelper$1;->val$value:Ljava/lang/CharSequence;

    #calls: Landroid/text/util/UrlSpanHelper;->subDate(Ljava/lang/CharSequence;)J
    invoke-static {v5}, Landroid/text/util/UrlSpanHelper;->access$000(Ljava/lang/CharSequence;)J

    move-result-wide v2

    .line 110
    .restart local v2       #sTime:J
    #calls: Landroid/text/util/UrlSpanHelper;->createStartTimeEvent(JLandroid/content/Context;)V
    invoke-static {v2, v3, v0}, Landroid/text/util/UrlSpanHelper;->access$200(JLandroid/content/Context;)V

    goto :goto_0

    .line 111
    .end local v2           #sTime:J
    :cond_1
    const-string v5, "3"

    iget-object v6, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    iget-object v5, p0, Landroid/text/util/UrlSpanHelper$1;->val$value:Ljava/lang/CharSequence;

    #calls: Landroid/text/util/UrlSpanHelper;->subTimeToTime(Ljava/lang/CharSequence;)[J
    invoke-static {v5}, Landroid/text/util/UrlSpanHelper;->access$300(Ljava/lang/CharSequence;)[J

    move-result-object v4

    .line 113
    .local v4, times:[J
    const/4 v5, 0x0

    aget-wide v5, v4, v5

    const/4 v7, 0x1

    aget-wide v7, v4, v7

    #calls: Landroid/text/util/UrlSpanHelper;->createTimeToTimeEvent(JJLandroid/content/Context;)V
    invoke-static {v5, v6, v7, v8, v0}, Landroid/text/util/UrlSpanHelper;->access$400(JJLandroid/content/Context;)V

    goto :goto_0

    .line 115
    .end local v4           #times:[J
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 116
    .restart local v2       #sTime:J
    #calls: Landroid/text/util/UrlSpanHelper;->createAllDayEvent(JLandroid/content/Context;)V
    invoke-static {v2, v3, v0}, Landroid/text/util/UrlSpanHelper;->access$100(JLandroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 125
    .end local v2           #sTime:J
    :pswitch_1
    iget-object v5, p0, Landroid/text/util/UrlSpanHelper$1;->val$title:Ljava/lang/String;

    iget-object v6, p0, Landroid/text/util/UrlSpanHelper$1;->val$widget:Landroid/view/View;

    #calls: Landroid/text/util/UrlSpanHelper;->setPrimaryClip(Ljava/lang/CharSequence;Landroid/view/View;)V
    invoke-static {v5, v6}, Landroid/text/util/UrlSpanHelper;->access$500(Ljava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 129
    :pswitch_2
    :try_start_2
    const-string v5, "3"

    iget-object v6, p0, Landroid/text/util/UrlSpanHelper$1;->val$eventType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 130
    iget-object v5, p0, Landroid/text/util/UrlSpanHelper$1;->val$value:Ljava/lang/CharSequence;

    #calls: Landroid/text/util/UrlSpanHelper;->subTimeToTime(Ljava/lang/CharSequence;)[J
    invoke-static {v5}, Landroid/text/util/UrlSpanHelper;->access$300(Ljava/lang/CharSequence;)[J

    move-result-object v4

    .line 131
    .restart local v4       #times:[J
    const/4 v5, 0x0

    aget-wide v5, v4, v5

    #calls: Landroid/text/util/UrlSpanHelper;->openCalendar(JLandroid/content/Context;)V
    invoke-static {v5, v6, v0}, Landroid/text/util/UrlSpanHelper;->access$600(JLandroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 136
    .end local v4           #times:[J
    :catch_1
    move-exception v1

    .line 137
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 139
    .restart local v2       #sTime:J
    #calls: Landroid/text/util/UrlSpanHelper;->openCalendar(JLandroid/content/Context;)V
    invoke-static {v2, v3, v0}, Landroid/text/util/UrlSpanHelper;->access$600(JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 133
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #sTime:J
    :cond_3
    :try_start_3
    iget-object v5, p0, Landroid/text/util/UrlSpanHelper$1;->val$value:Ljava/lang/CharSequence;

    #calls: Landroid/text/util/UrlSpanHelper;->subDate(Ljava/lang/CharSequence;)J
    invoke-static {v5}, Landroid/text/util/UrlSpanHelper;->access$000(Ljava/lang/CharSequence;)J

    move-result-wide v2

    .line 134
    .restart local v2       #sTime:J
    #calls: Landroid/text/util/UrlSpanHelper;->openCalendar(JLandroid/content/Context;)V
    invoke-static {v2, v3, v0}, Landroid/text/util/UrlSpanHelper;->access$600(JLandroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
