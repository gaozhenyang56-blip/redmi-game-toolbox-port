.class public final Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field private final ivDel:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvInfo:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tvNumber:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0c88

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.tv_info)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;->tvInfo:Landroid/widget/TextView;

    const v0, 0x7f0b0caa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.tv_number)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;->tvNumber:Landroid/widget/TextView;

    const v0, 0x7f0b05f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.iv_del)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;->ivDel:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;->bindData$lambda$3$lambda$2$lambda$0(Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;->bindData$lambda$3$lambda$2$lambda$1(Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;ILandroid/view/View;)V

    return-void
.end method

.method private static final bindData$lambda$3$lambda$2$lambda$0(Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;ILandroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-interface {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;->onDelete(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private static final bindData$lambda$3$lambda$2$lambda$1(Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;ILandroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-interface {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;->onClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bindData(Ljava/lang/String;ILcom/miui/networkassistant/ui/adapter/OnItemClickListener;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;->tvNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;->tvInfo:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;->ivDel:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/FolmeHelper;->onDefaultViewPress(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;->ivDel:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/networkassistant/ui/adapter/c;

    invoke-direct {v1, p3, p0, p2}, Lcom/miui/networkassistant/ui/adapter/c;-><init>(Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/FolmeHelper;->onCardPress(Landroid/view/View;)V

    new-instance p1, Lcom/miui/networkassistant/ui/adapter/d;

    invoke-direct {p1, p3, p0, p2}, Lcom/miui/networkassistant/ui/adapter/d;-><init>(Lcom/miui/networkassistant/ui/adapter/OnItemClickListener;Lcom/miui/networkassistant/ui/adapter/RecentNumberHolder;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
