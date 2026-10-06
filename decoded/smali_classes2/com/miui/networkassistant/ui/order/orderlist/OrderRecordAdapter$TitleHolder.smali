.class public final Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$TitleHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TitleHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;

.field private final tv_month:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "_itemVie"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$TitleHolder;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b0c9f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "_itemVie.findViewById(R.id.tv_month)"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$TitleHolder;->tv_month:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final setData(Lcom/miui/networkassistant/ui/bean/TitleBean;)V
    .locals 4
    .param p1    # Lcom/miui/networkassistant/ui/bean/TitleBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "titleBean"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$TitleHolder;->this$0:Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/TitleBean;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->getYear()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/TitleBean;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->getMonth()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$TitleHolder;->tv_month:Landroid/widget/TextView;

    const-string v0, "\u672c\u6708"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter$TitleHolder;->tv_month:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/order/orderlist/OrderRecordAdapter;->getMonthNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/TitleBean;->getMonth()I

    move-result v3

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/bean/TitleBean;->getYear()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
