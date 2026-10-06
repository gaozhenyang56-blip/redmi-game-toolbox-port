.class public final Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$EndLineHolder;,
        Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;,
        Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$TitleHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field private dateFormat:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private month:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private monthNames:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private recordDataByDate:Lcom/miui/networkassistant/ui/bean/RecordDataByDate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private simpleDateFormat:Ljava/text/SimpleDateFormat;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private year:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/networkassistant/ui/bean/RecordDataByDate;)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/networkassistant/ui/bean/RecordDataByDate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordDataByDate"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->recordDataByDate:Lcom/miui/networkassistant/ui/bean/RecordDataByDate;

    new-instance p2, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "MMM yyyy"

    invoke-direct {p2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE d MMM yyyy HH:mm:ss"

    invoke-direct {p2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string p2, "from(mContext)"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->inflater:Landroid/view/LayoutInflater;

    const-string v0, "Jan"

    const-string v1, "Feb"

    const-string v2, "Mar"

    const-string v3, "Apr"

    const-string v4, "May"

    const-string v5, "Jun"

    const-string v6, "Jul"

    const-string v7, "Aug"

    const-string v8, "Sep"

    const-string v9, "Oct"

    const-string v10, "Nov"

    const-string v11, "Dec"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->monthNames:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->year:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->month:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public final getInflater()Landroid/view/LayoutInflater;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->recordDataByDate:Lcom/miui/networkassistant/ui/bean/RecordDataByDate;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->getMutipleList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->recordDataByDate:Lcom/miui/networkassistant/ui/bean/RecordDataByDate;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->getMutipleList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/ui/bean/BaseRecordBean;

    instance-of v0, p1, Lcom/miui/networkassistant/ui/bean/TitleBean;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lcom/miui/networkassistant/ui/bean/EndLineBean;

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    :goto_0
    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u5145\u503c\u8bb0\u5f55\u975e\u6cd5\u7684itemView\u7c7b\u578b"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getMContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getMonth()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->month:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMonthNames()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->monthNames:[Ljava/lang/String;

    return-object v0
.end method

.method public final getRecordDataByDate()Lcom/miui/networkassistant/ui/bean/RecordDataByDate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->recordDataByDate:Lcom/miui/networkassistant/ui/bean/RecordDataByDate;

    return-object v0
.end method

.method public final getSimpleDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public final getYear()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->year:Ljava/lang/Integer;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$TitleHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$TitleHolder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->recordDataByDate:Lcom/miui/networkassistant/ui/bean/RecordDataByDate;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->getMutipleList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.miui.networkassistant.ui.bean.TitleBean"

    invoke-static {p2, v0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/miui/networkassistant/ui/bean/TitleBean;

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$TitleHolder;->setData(Lcom/miui/networkassistant/ui/bean/TitleBean;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->recordDataByDate:Lcom/miui/networkassistant/ui/bean/RecordDataByDate;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/bean/RecordDataByDate;->getMutipleList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.miui.networkassistant.ui.bean.RecordBean.OrderBean"

    invoke-static {p2, v0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;->setData(Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;)V

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$EndLineHolder;

    if-eqz p1, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u5145\u503c\u8bb0\u5f55\u975e\u6cd5\u7684itemView\u7c7b\u578b"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater.inflate(R.layou\u2026hargecard, parent, false)"

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    new-instance p2, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$EndLineHolder;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0e00bb

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$EndLineHolder;-><init>(Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u5145\u503c\u8bb0\u5f55\u975e\u6cd5\u7684itemView\u7c7b\u578b"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0e00bd

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$RecordHolder;-><init>(Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;Landroid/view/View;)V

    return-object p2

    :cond_2
    new-instance p2, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$TitleHolder;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0e00bc

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$TitleHolder;-><init>(Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final setDateFormat(Ljava/text/SimpleDateFormat;)V
    .locals 1
    .param p1    # Ljava/text/SimpleDateFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public final setMonth(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->month:Ljava/lang/Integer;

    return-void
.end method

.method public final setMonthNames([Ljava/lang/String;)V
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->monthNames:[Ljava/lang/String;

    return-void
.end method

.method public final setRecordDataByDate(Lcom/miui/networkassistant/ui/bean/RecordDataByDate;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/bean/RecordDataByDate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->recordDataByDate:Lcom/miui/networkassistant/ui/bean/RecordDataByDate;

    return-void
.end method

.method public final setSimpleDateFormat(Ljava/text/SimpleDateFormat;)V
    .locals 1
    .param p1    # Ljava/text/SimpleDateFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public final setYear(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->year:Ljava/lang/Integer;

    return-void
.end method
