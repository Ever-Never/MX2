.class public Lcom/meizu/text/format/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# static fields
.field public static final FORMAT_TYPE_APP_VERSIONS:I = 0x7

.field public static final FORMAT_TYPE_CALENDAR_APPWIDGET:I = 0x8

.field public static final FORMAT_TYPE_CALL_LOGS:I = 0x5

.field public static final FORMAT_TYPE_CONTACTS_BIRTHDAY_MD:I = 0xa

.field public static final FORMAT_TYPE_CONTACTS_BIRTHDAY_YMD:I = 0x9

.field public static final FORMAT_TYPE_EMAIL:I = 0x2

.field public static final FORMAT_TYPE_MMS:I = 0x1

.field public static final FORMAT_TYPE_NORMAL:I = 0x0

.field public static final FORMAT_TYPE_PERSONAL_FOOTPRINT:I = 0x6

.field public static final FORMAT_TYPE_RECORDER:I = 0x3

.field public static final FORMAT_TYPE_RECORDER_PHONE:I = 0x4

.field private static FormatResultLast:Ljava/lang/String; = null

.field private static FormatTypeLast:I = 0x0

.field private static final MILLISECONDS_OF_HOUR:I = 0x36ee80

.field private static NowMillisLast:J

.field private static NowTimeLast:Landroid/text/format/Time;

.field private static ThenTimeLast:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/meizu/text/format/DateTimeUtils;->NowMillisLast:J

    .line 130
    const/4 v0, -0x1

    sput v0, Lcom/meizu/text/format/DateTimeUtils;->FormatTypeLast:I

    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTimeStampString(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 28
    .parameter "context"
    .parameter "when"
    .parameter "type"

    .prologue
    .line 146
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 147
    .local v20, then:Landroid/text/format/Time;
    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 148
    const/4 v10, 0x0

    .line 149
    .local v10, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 150
    .local v11, nowmillis:Ljava/lang/Long;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    .line 152
    .local v3, is24:Z
    sget v22, Lcom/meizu/text/format/DateTimeUtils;->FormatTypeLast:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    const/16 v17, 0x1

    .line 153
    .local v17, sameType:Z
    :goto_0
    sput p3, Lcom/meizu/text/format/DateTimeUtils;->FormatTypeLast:I

    .line 155
    const/16 v16, 0x0

    .line 156
    .local v16, sameNowDay:Z
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    if-nez v22, :cond_3

    .line 157
    const/16 v16, 0x0

    .line 166
    :goto_1
    if-nez v16, :cond_5

    .line 167
    new-instance v10, Landroid/text/format/Time;

    .end local v10           #now:Landroid/text/format/Time;
    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 168
    .restart local v10       #now:Landroid/text/format/Time;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 170
    sput-object v10, Lcom/meizu/text/format/DateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    .line 171
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    iget v0, v10, Landroid/text/format/Time;->hour:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x3c

    mul-int/lit8 v24, v24, 0x3c

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    iget v0, v10, Landroid/text/format/Time;->minute:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x3c

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    add-int v24, v24, v25

    iget v0, v10, Landroid/text/format/Time;->second:I

    move/from16 v25, v0

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    sput-wide v22, Lcom/meizu/text/format/DateTimeUtils;->NowMillisLast:J

    .line 176
    :goto_2
    const/16 v18, 0x0

    .line 177
    .local v18, sameWhenDay:Z
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    if-eqz v22, :cond_0

    .line 178
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    .line 181
    :cond_0
    :goto_3
    const/16 v19, 0x0

    .line 182
    .local v19, sameWhenMonth:Z
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    if-eqz v22, :cond_1

    .line 183
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    const/16 v19, 0x1

    .line 186
    :cond_1
    :goto_4
    sput-object v20, Lcom/meizu/text/format/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    .line 187
    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v22, v0

    iget v0, v10, Landroid/text/format/Time;->weekDay:I

    move/from16 v23, v0

    sub-int v21, v22, v23

    .line 188
    .local v21, weekStart:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v22, v0

    iget v0, v10, Landroid/text/format/Time;->year:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_8

    const/4 v4, 0x1

    .line 189
    .local v4, isBeforeYear:Z
    :goto_5
    iget v0, v10, Landroid/text/format/Time;->year:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v22, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_9

    const/4 v7, 0x1

    .line 190
    .local v7, isThisYear:Z
    :goto_6
    if-eqz v7, :cond_a

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v22, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    const/4 v8, 0x1

    .line 191
    .local v8, isToday:Z
    :goto_7
    if-eqz v7, :cond_b

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v22, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    const/4 v9, 0x1

    .line 192
    .local v9, isYesterday:Z
    :goto_8
    if-eqz v7, :cond_c

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v21

    if-lt v0, v1, :cond_c

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v22, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    const/4 v6, 0x1

    .line 193
    .local v6, isThisWeek:Z
    :goto_9
    const-string v22, "ru"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 194
    .local v5, isRu:Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    .line 195
    .local v14, resources:Landroid/content/res/Resources;
    packed-switch p3, :pswitch_data_0

    .line 566
    const/16 v22, 0x0

    :goto_a
    return-object v22

    .line 152
    .end local v4           #isBeforeYear:Z
    .end local v5           #isRu:Z
    .end local v6           #isThisWeek:Z
    .end local v7           #isThisYear:Z
    .end local v8           #isToday:Z
    .end local v9           #isYesterday:Z
    .end local v14           #resources:Landroid/content/res/Resources;
    .end local v16           #sameNowDay:Z
    .end local v17           #sameType:Z
    .end local v18           #sameWhenDay:Z
    .end local v19           #sameWhenMonth:Z
    .end local v21           #weekStart:I
    :cond_2
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 160
    .restart local v16       #sameNowDay:Z
    .restart local v17       #sameType:Z
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sget-wide v24, Lcom/meizu/text/format/DateTimeUtils;->NowMillisLast:J

    cmp-long v22, v22, v24

    if-ltz v22, :cond_4

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sget-wide v24, Lcom/meizu/text/format/DateTimeUtils;->NowMillisLast:J

    const-wide/32 v26, 0x5265c00

    add-long v24, v24, v26

    cmp-long v22, v22, v24

    if-gez v22, :cond_4

    .line 161
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 163
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 173
    :cond_5
    sget-object v10, Lcom/meizu/text/format/DateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    goto/16 :goto_2

    .line 178
    .restart local v18       #sameWhenDay:Z
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 183
    .restart local v19       #sameWhenMonth:Z
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 188
    .restart local v21       #weekStart:I
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 189
    .restart local v4       #isBeforeYear:Z
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 190
    .restart local v7       #isThisYear:Z
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 191
    .restart local v8       #isToday:Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_8

    .line 192
    .restart local v9       #isYesterday:Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_9

    .line 197
    .restart local v5       #isRu:Z
    .restart local v6       #isThisWeek:Z
    .restart local v14       #resources:Landroid/content/res/Resources;
    :pswitch_0
    if-eqz v8, :cond_e

    .line 198
    if-eqz v3, :cond_d

    .line 199
    const v22, 0x104059a

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto :goto_a

    .line 201
    :cond_d
    const v22, 0x104059b

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto :goto_a

    .line 203
    :cond_e
    if-eqz v6, :cond_10

    .line 205
    if-eqz v18, :cond_f

    if-eqz v17, :cond_f

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 206
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_a

    .line 208
    :cond_f
    const v22, 0x104059c

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 209
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 210
    :cond_10
    if-eqz v7, :cond_13

    .line 212
    if-eqz v18, :cond_11

    if-eqz v17, :cond_11

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 213
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 215
    :cond_11
    if-eqz v5, :cond_12

    .line 216
    const v22, 0x10405ad

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 220
    :goto_b
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 218
    :cond_12
    const v22, 0x104059f

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_b

    .line 221
    :cond_13
    if-eqz v4, :cond_16

    .line 222
    if-eqz v18, :cond_14

    if-eqz v17, :cond_14

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_14

    .line 223
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 225
    :cond_14
    if-eqz v5, :cond_15

    .line 226
    const v22, 0x10405b3

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 230
    :goto_c
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 228
    :cond_15
    const v22, 0x10405a5

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_c

    .line 234
    :cond_16
    if-eqz v18, :cond_17

    if-eqz v17, :cond_17

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_17

    .line 235
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 237
    :cond_17
    if-eqz v5, :cond_18

    .line 238
    const v22, 0x10405b3

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 242
    :goto_d
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 240
    :cond_18
    const v22, 0x10405a5

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_d

    .line 245
    :pswitch_1
    if-eqz v8, :cond_1a

    .line 246
    if-eqz v3, :cond_19

    .line 247
    const v22, 0x104059a

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 249
    :cond_19
    const v22, 0x104059b

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 251
    :cond_1a
    if-eqz v6, :cond_1c

    .line 252
    if-eqz v3, :cond_1b

    .line 253
    const v22, 0x104059d

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 255
    :cond_1b
    const v22, 0x104059e

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 257
    :cond_1c
    if-eqz v7, :cond_1e

    .line 258
    if-eqz v3, :cond_1d

    .line 259
    const v22, 0x10405a0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 261
    :cond_1d
    const v22, 0x10405a1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 263
    :cond_1e
    if-eqz v4, :cond_21

    .line 264
    if-eqz v18, :cond_1f

    if-eqz v17, :cond_1f

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1f

    .line 265
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 267
    :cond_1f
    const-string v22, "ru"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 268
    const v22, 0x10405b3

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 272
    :goto_e
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 270
    :cond_20
    const v22, 0x10405a5

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_e

    .line 275
    :cond_21
    if-eqz v3, :cond_23

    .line 276
    if-eqz v5, :cond_22

    .line 277
    const v22, 0x10405b4

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 279
    :cond_22
    const v22, 0x10405a6

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 282
    :cond_23
    if-eqz v5, :cond_24

    .line 283
    const v22, 0x10405b5

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 285
    :cond_24
    const v22, 0x10405a7

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 290
    :pswitch_2
    if-eqz v7, :cond_28

    .line 291
    if-eqz v3, :cond_26

    .line 292
    if-eqz v5, :cond_25

    .line 293
    const v22, 0x10405b0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 295
    :cond_25
    const v22, 0x10405a2

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 298
    :cond_26
    if-eqz v5, :cond_27

    .line 299
    const v22, 0x10405b1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 301
    :cond_27
    const v22, 0x10405a3

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 304
    :cond_28
    if-eqz v4, :cond_2b

    .line 305
    if-eqz v18, :cond_29

    if-eqz v17, :cond_29

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_29

    .line 306
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 308
    :cond_29
    if-eqz v5, :cond_2a

    .line 309
    const v22, 0x10405b3

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 313
    :goto_f
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 311
    :cond_2a
    const v22, 0x10405a5

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_f

    .line 315
    :cond_2b
    if-eqz v5, :cond_2c

    .line 316
    const v22, 0x10405b4

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 318
    :cond_2c
    const v22, 0x10405a6

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 322
    :pswitch_3
    if-eqz v8, :cond_2e

    .line 323
    if-eqz v3, :cond_2d

    .line 324
    const v22, 0x104059a

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 326
    :cond_2d
    const v22, 0x104059b

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 328
    :cond_2e
    if-eqz v7, :cond_32

    .line 329
    if-eqz v3, :cond_30

    .line 330
    if-eqz v5, :cond_2f

    .line 331
    const v22, 0x10405ae

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 333
    :cond_2f
    const v22, 0x10405a0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 336
    :cond_30
    if-eqz v5, :cond_31

    .line 337
    const v22, 0x10405af

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 339
    :cond_31
    const v22, 0x10405a1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 342
    :cond_32
    if-eqz v4, :cond_35

    .line 343
    if-eqz v18, :cond_33

    if-eqz v17, :cond_33

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_33

    .line 344
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 346
    :cond_33
    if-eqz v5, :cond_34

    .line 347
    const v22, 0x10405b3

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 351
    :goto_10
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 349
    :cond_34
    const v22, 0x10405a5

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_10

    .line 353
    :cond_35
    if-eqz v3, :cond_37

    .line 354
    if-eqz v5, :cond_36

    .line 355
    const v22, 0x10405b4

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 357
    :cond_36
    const v22, 0x10405a6

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 360
    :cond_37
    const v22, 0x10405a7

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 364
    :pswitch_4
    if-eqz v8, :cond_39

    .line 365
    if-eqz v3, :cond_38

    .line 366
    const v22, 0x104059a

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 368
    :cond_38
    const v22, 0x104059b

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 370
    :cond_39
    if-eqz v7, :cond_3c

    .line 372
    if-eqz v18, :cond_3a

    if-eqz v17, :cond_3a

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3a

    .line 373
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 375
    :cond_3a
    if-eqz v5, :cond_3b

    .line 376
    const v22, 0x10405ad

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 380
    :goto_11
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 378
    :cond_3b
    const v22, 0x104059f

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_11

    .line 381
    :cond_3c
    if-eqz v4, :cond_3f

    .line 382
    if-eqz v18, :cond_3d

    if-eqz v17, :cond_3d

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3d

    .line 383
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 385
    :cond_3d
    if-eqz v5, :cond_3e

    .line 386
    const v22, 0x10405b3

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 390
    :goto_12
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 388
    :cond_3e
    const v22, 0x10405a5

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_12

    .line 393
    :cond_3f
    if-eqz v18, :cond_40

    if-eqz v17, :cond_40

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_40

    .line 394
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 396
    :cond_40
    if-eqz v5, :cond_41

    .line 397
    const v22, 0x10405b3

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 401
    :goto_13
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 399
    :cond_41
    const v22, 0x10405a5

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_13

    .line 404
    :pswitch_5
    if-eqz v7, :cond_45

    .line 405
    if-eqz v3, :cond_43

    .line 406
    if-eqz v5, :cond_42

    .line 407
    const v22, 0x10405ae

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 409
    :cond_42
    const v22, 0x10405a0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 412
    :cond_43
    if-eqz v5, :cond_44

    .line 413
    const v22, 0x10405af

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 415
    :cond_44
    const v22, 0x10405a1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 418
    :cond_45
    if-eqz v4, :cond_48

    .line 419
    if-eqz v18, :cond_46

    if-eqz v17, :cond_46

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_46

    .line 420
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 422
    :cond_46
    if-eqz v5, :cond_47

    .line 423
    const v22, 0x10405b3

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 427
    :goto_14
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 425
    :cond_47
    const v22, 0x10405a5

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_14

    .line 431
    :cond_48
    if-eqz v18, :cond_49

    if-eqz v17, :cond_49

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_49

    .line 432
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 434
    :cond_49
    if-eqz v3, :cond_4b

    .line 435
    if-eqz v5, :cond_4a

    .line 436
    const v22, 0x10405b4

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 443
    :goto_15
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 438
    :cond_4a
    const v22, 0x10405a6

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_15

    .line 441
    :cond_4b
    const v22, 0x10405a7

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_15

    .line 446
    :pswitch_6
    if-eqz v8, :cond_4f

    .line 447
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sub-long v12, v22, p1

    .line 449
    .local v12, offsetMilliSecounds:J
    const-wide/32 v22, 0x36ee80

    cmp-long v22, v12, v22

    if-ltz v22, :cond_4d

    .line 450
    long-to-int v0, v12

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x3c

    div-int/lit8 v22, v22, 0x3c

    move/from16 v0, v22

    div-int/lit16 v15, v0, 0x3e8

    .line 451
    .local v15, returnValue:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_4c

    .line 452
    const v22, 0x10405aa

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 454
    :cond_4c
    const v22, 0x10405a9

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, ","

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 457
    .end local v15           #returnValue:I
    :cond_4d
    long-to-int v0, v12

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x3c

    move/from16 v0, v22

    div-int/lit16 v15, v0, 0x3e8

    .line 458
    .restart local v15       #returnValue:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-gt v15, v0, :cond_4e

    .line 459
    const v22, 0x10405ac

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 461
    :cond_4e
    const v22, 0x10405ab

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, ","

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 464
    .end local v12           #offsetMilliSecounds:J
    .end local v15           #returnValue:I
    :cond_4f
    if-eqz v9, :cond_50

    .line 465
    const v22, 0x10405a8

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 466
    :cond_50
    if-eqz v7, :cond_53

    .line 468
    if-eqz v18, :cond_51

    if-eqz v17, :cond_51

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_51

    .line 469
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 471
    :cond_51
    if-eqz v5, :cond_52

    .line 472
    const v22, 0x10405ad

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 476
    :goto_16
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 474
    :cond_52
    const v22, 0x104059f

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_16

    .line 477
    :cond_53
    if-eqz v4, :cond_56

    .line 478
    if-eqz v18, :cond_54

    if-eqz v17, :cond_54

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_54

    .line 479
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 481
    :cond_54
    if-eqz v5, :cond_55

    .line 482
    const v22, 0x10405b3

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 486
    :goto_17
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 484
    :cond_55
    const v22, 0x10405a5

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_17

    .line 489
    :cond_56
    if-eqz v18, :cond_57

    if-eqz v17, :cond_57

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_57

    .line 490
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 492
    :cond_57
    if-eqz v5, :cond_58

    .line 493
    const v22, 0x10405b3

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 497
    :goto_18
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 495
    :cond_58
    const v22, 0x10405a5

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_18

    .line 501
    :pswitch_7
    if-eqz v18, :cond_59

    if-eqz v17, :cond_59

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_59

    .line 502
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 504
    :cond_59
    if-eqz v7, :cond_5b

    .line 505
    if-eqz v5, :cond_5a

    .line 506
    const v22, 0x10405ad

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 510
    :goto_19
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 508
    :cond_5a
    const v22, 0x104059f

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_19

    .line 512
    :cond_5b
    if-eqz v5, :cond_5c

    .line 513
    const v22, 0x10405b3

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 517
    :goto_1a
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 515
    :cond_5c
    const v22, 0x10405a5

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_1a

    .line 520
    :pswitch_8
    iget v0, v10, Landroid/text/format/Time;->year:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5f

    .line 522
    if-eqz v18, :cond_5d

    if-eqz v17, :cond_5d

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5d

    .line 523
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 525
    :cond_5d
    if-eqz v5, :cond_5e

    .line 526
    const v22, 0x10405ad

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 530
    :goto_1b
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 528
    :cond_5e
    const v22, 0x104059f

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_1b

    .line 533
    :cond_5f
    if-eqz v19, :cond_60

    if-eqz v17, :cond_60

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_60

    .line 534
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 536
    :cond_60
    if-eqz v5, :cond_61

    .line 537
    const v22, 0x10405b2

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 541
    :goto_1c
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 539
    :cond_61
    const v22, 0x10405a4

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_1c

    .line 545
    :pswitch_9
    if-eqz v18, :cond_62

    if-eqz v17, :cond_62

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_62

    .line 546
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 548
    :cond_62
    if-eqz v5, :cond_63

    .line 549
    const v22, 0x10405b3

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 553
    :goto_1d
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 551
    :cond_63
    const v22, 0x10405a5

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_1d

    .line 556
    :pswitch_a
    if-eqz v18, :cond_64

    if-eqz v17, :cond_64

    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_64

    .line 557
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 559
    :cond_64
    if-eqz v5, :cond_65

    .line 560
    const v22, 0x10405ad

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 564
    :goto_1e
    sget-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 562
    :cond_65
    const v22, 0x104059f

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/meizu/text/format/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_1e

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
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

.method public static formatTimeStampString(Landroid/content/Context;JIZ)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"
    .parameter "type"
    .parameter "hasTime"

    .prologue
    .line 123
    invoke-static {p0, p1, p2, p3}, Lcom/meizu/text/format/DateTimeUtils;->formatTimeStampString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"
    .parameter "fullFormat"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/meizu/text/format/DateTimeUtils;->formatTimeStampString(Landroid/content/Context;JIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
