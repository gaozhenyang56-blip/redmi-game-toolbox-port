.class public final Lcom/miui/networkassistant/ui/bean/RecordDataByDate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBaseRecordBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseRecordBean.kt\ncom/miui/networkassistant/ui/bean/RecordDataByDate\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"
    }
.end annotation


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final dateRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/bean/RecordAndDate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mutipleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/bean/BaseRecordBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->calendar:Ljava/util/Calendar;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->dateRecordList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->mutipleList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addDateRecord(Ljava/util/ArrayList;)V
    .locals 12
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "comeRecords"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;->getCreateTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v3, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->dateRecordList:Ljava/util/ArrayList;

    invoke-static {v3}, Lqj/l;->I(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/networkassistant/ui/bean/RecordAndDate;

    invoke-virtual {v6}, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->getYear()I

    move-result v7

    if-ne v7, v1, :cond_1

    invoke-virtual {v6}, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->getMonth()I

    move-result v7

    if-ne v7, v9, :cond_1

    iget-object v3, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->mutipleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->mutipleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v6}, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->getThisMonthRecords()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->getThisMonthRecords()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v2

    add-int/2addr v6, v2

    add-int/2addr v5, v6

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_2
    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->mutipleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v10, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->dateRecordList:Ljava/util/ArrayList;

    new-instance v11, Lcom/miui/networkassistant/ui/bean/RecordAndDate;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v11

    move v4, v1

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/miui/networkassistant/ui/bean/RecordAndDate;-><init>(IILjava/util/ArrayList;ILbk/g;)V

    invoke-virtual {v11}, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->getThisMonthRecords()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->mutipleList:Ljava/util/ArrayList;

    new-instance v4, Lcom/miui/networkassistant/ui/bean/EndLineBean;

    invoke-direct {v4}, Lcom/miui/networkassistant/ui/bean/EndLineBean;-><init>()V

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->mutipleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->mutipleList:Ljava/util/ArrayList;

    new-instance v3, Lcom/miui/networkassistant/ui/bean/TitleBean;

    invoke-direct {v3, v1, v9}, Lcom/miui/networkassistant/ui/bean/TitleBean;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final getDateRecordList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/bean/RecordAndDate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->dateRecordList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMutipleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/bean/BaseRecordBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->mutipleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final resetDateRecord()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->dateRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->mutipleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
