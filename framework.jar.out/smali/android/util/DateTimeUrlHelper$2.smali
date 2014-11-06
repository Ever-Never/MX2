.class final Landroid/util/DateTimeUrlHelper$2;
.super Ljava/lang/Object;
.source "DateTimeUrlHelper.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/DateTimeUrlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 11
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 633
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, matchingRegion:Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 635
    .local v0, date:Ljava/util/Date;
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_H_M:Ljava/util/regex/Pattern;

    #calls: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 637
    const/4 v7, 0x0

    :try_start_0
    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->validateTime(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v5, v6

    .line 801
    :cond_1
    :goto_0
    return v5

    .line 644
    :cond_2
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd HH:mm"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 646
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 647
    #calls: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :cond_3
    :goto_1
    move v5, v6

    .line 801
    goto :goto_0

    .line 650
    :catch_0
    move-exception v2

    .line 651
    .local v2, e:Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 653
    .end local v2           #e:Ljava/text/ParseException;
    :cond_4
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D:Ljava/util/regex/Pattern;

    #calls: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 655
    :try_start_1
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    move v5, v6

    .line 656
    goto :goto_0

    .line 658
    :cond_5
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 659
    .restart local v4       #sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 660
    #calls: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 663
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v2

    .line 664
    .restart local v2       #e:Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 666
    .end local v2           #e:Ljava/text/ParseException;
    :cond_6
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME_TO_TIME:Ljava/util/regex/Pattern;

    #calls: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 668
    :try_start_2
    #calls: Landroid/util/DateTimeUrlHelper;->createTimeToTimeDates(Ljava/lang/String;)[Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$200(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 669
    .local v1, dates:[Ljava/util/Date;
    if-nez v1, :cond_7

    move v5, v6

    .line 670
    goto :goto_0

    .line 672
    :cond_7
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    const/4 v7, 0x0

    aget-object v7, v1, v7

    #calls: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 676
    .end local v1           #dates:[Ljava/util/Date;
    :catch_2
    move-exception v2

    .line 677
    .local v2, e:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 679
    .end local v2           #e:Ljava/lang/Exception;
    :cond_8
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_TIAN_WU_CN:Ljava/util/regex/Pattern;

    #calls: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 681
    :try_start_3
    #calls: Landroid/util/DateTimeUrlHelper;->createDateByTianWu(Ljava/lang/String;)[Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$300(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 682
    .restart local v1       #dates:[Ljava/util/Date;
    const/4 v7, 0x0

    aget-object v7, v1, v7

    #calls: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 685
    .end local v1           #dates:[Ljava/util/Date;
    :catch_3
    move-exception v2

    .line 686
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 688
    .end local v2           #e:Ljava/lang/Exception;
    :cond_9
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_CN:Ljava/util/regex/Pattern;

    #calls: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 690
    :try_start_4
    #calls: Landroid/util/DateTimeUrlHelper;->switchFormat(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 691
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    move v5, v6

    .line 692
    goto/16 :goto_0

    .line 694
    :cond_a
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 695
    .restart local v4       #sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 696
    #calls: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 699
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :catch_4
    move-exception v2

    .line 700
    .local v2, e:Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 702
    .end local v2           #e:Ljava/text/ParseException;
    :cond_b
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_CN:Ljava/util/regex/Pattern;

    #calls: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 704
    :try_start_5
    #calls: Landroid/util/DateTimeUrlHelper;->switchFormatNoYear(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 705
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    move v5, v6

    .line 706
    goto/16 :goto_0

    .line 708
    :cond_c
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 709
    .restart local v4       #sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 710
    #calls: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 713
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :catch_5
    move-exception v2

    .line 714
    .restart local v2       #e:Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 716
    .end local v2           #e:Ljava/text/ParseException;
    :cond_d
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_ALL_CN:Ljava/util/regex/Pattern;

    #calls: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 718
    :try_start_6
    #calls: Landroid/util/DateTimeUrlHelper;->changeCNToNum(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 719
    #calls: Landroid/util/DateTimeUrlHelper;->switchFormatNoYear(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 720
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    move v5, v6

    .line 721
    goto/16 :goto_0

    .line 723
    :cond_e
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 724
    .restart local v4       #sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 725
    #calls: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 728
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :catch_6
    move-exception v2

    .line 729
    .restart local v2       #e:Ljava/text/ParseException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 731
    .end local v2           #e:Ljava/text/ParseException;
    :cond_f
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME:Ljava/util/regex/Pattern;

    #calls: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 732
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateTime(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    move v5, v6

    .line 733
    goto/16 :goto_0

    .line 735
    :cond_10
    #calls: Landroid/util/DateTimeUrlHelper;->createTimePointDates(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$700(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 736
    #calls: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 739
    :cond_11
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_DAY_WU_CN:Ljava/util/regex/Pattern;

    #calls: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 741
    :try_start_7
    #calls: Landroid/util/DateTimeUrlHelper;->createDateByDayWu(Ljava/lang/String;)[Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$800(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 742
    .restart local v1       #dates:[Ljava/util/Date;
    if-nez v1, :cond_12

    move v5, v6

    .line 743
    goto/16 :goto_0

    .line 745
    :cond_12
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    const/4 v7, 0x0

    aget-object v7, v1, v7

    #calls: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 749
    .end local v1           #dates:[Ljava/util/Date;
    :catch_7
    move-exception v2

    .line 750
    .local v2, e:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 752
    .end local v2           #e:Ljava/lang/Exception;
    :cond_13
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_NEXT_DAY_OF_WEEK:Ljava/util/regex/Pattern;

    #calls: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 754
    :try_start_8
    #calls: Landroid/util/DateTimeUrlHelper;->createDateByNextDayOfWeek(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$900(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 755
    if-nez v0, :cond_14

    move v5, v6

    .line 756
    goto/16 :goto_0

    .line 758
    :cond_14
    #calls: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 761
    :catch_8
    move-exception v2

    .line 762
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 764
    .end local v2           #e:Ljava/lang/Exception;
    :cond_15
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_Y_EN:Ljava/util/regex/Pattern;

    #calls: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 766
    :try_start_9
    #calls: Landroid/util/DateTimeUrlHelper;->createDateByEN_M_D_Y(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$1000(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 767
    if-nez v0, :cond_16

    move v5, v6

    .line 768
    goto/16 :goto_0

    .line 770
    :cond_16
    #calls: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 773
    :catch_9
    move-exception v2

    .line 774
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 776
    .end local v2           #e:Ljava/lang/Exception;
    :cond_17
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_EN:Ljava/util/regex/Pattern;

    #calls: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 778
    :try_start_a
    #calls: Landroid/util/DateTimeUrlHelper;->createDateByEN_M_D(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$1100(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 779
    if-nez v0, :cond_18

    move v5, v6

    .line 780
    goto/16 :goto_0

    .line 782
    :cond_18
    #calls: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 785
    :catch_a
    move-exception v2

    .line 786
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 788
    .end local v2           #e:Ljava/lang/Exception;
    :cond_19
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_WU_TIME:Ljava/util/regex/Pattern;

    #calls: Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    invoke-static {v7, v3}, Landroid/util/DateTimeUrlHelper;->access$000(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 790
    :try_start_b
    #calls: Landroid/util/DateTimeUrlHelper;->createDateByCN_Wu_Dian(Ljava/lang/String;)Ljava/util/Date;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->access$1200(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 791
    if-nez v0, :cond_1a

    move v5, v6

    .line 792
    goto/16 :goto_0

    .line 794
    :cond_1a
    #calls: Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->access$100(Ljava/util/Date;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 797
    :catch_b
    move-exception v2

    .line 798
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
