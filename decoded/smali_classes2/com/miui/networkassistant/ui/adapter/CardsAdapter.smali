.class public final Lcom/miui/networkassistant/ui/adapter/CardsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/adapter/CardsAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardsAdapter.kt\ncom/miui/networkassistant/ui/adapter/CardsAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,127:1\n1#2:128\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/networkassistant/ui/adapter/CardsAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "BH-CardsAdapter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_ACTIVITY:I = 0x4

.field public static final TYPE_CHARGE:I = 0x1

.field public static final TYPE_TRAFFIC:I = 0x2


# instance fields
.field private actBgResId:I

.field private bgResId:I

.field private cardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mActivityCount:I

.field private mColorResId:I

.field private final mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/CardSData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mDisableColorResId:I

.field private mDisplay:Z

.field private mEnable:Z

.field private mPhoneNumber:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPolicy:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mType:I

.field private mValid:Z

.field private noPhoneNumListener:Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private notice:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter$Companion;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->Companion:Lcom/miui/networkassistant/ui/adapter/CardsAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/networkassistant/viewholder/CardOnClickListener;Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/networkassistant/viewholder/CardOnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->cardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->noPhoneNumListener:Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;

    const-string p2, ""

    iput-object p2, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mPolicy:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    iput p2, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mType:I

    const p3, 0x7f060137

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mColorResId:I

    const-string p1, "#93A1AC"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mDisableColorResId:I

    const p1, 0x7f08047e

    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->bgResId:I

    const p1, 0x7f080486

    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->actBgResId:I

    iput-boolean p2, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mEnable:Z

    iput-boolean p2, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mValid:Z

    iput-boolean p2, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mDisplay:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/miui/networkassistant/viewholder/CardOnClickListener;Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;ILbk/g;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;-><init>(Landroid/content/Context;Lcom/miui/networkassistant/viewholder/CardOnClickListener;Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;)V

    return-void
.end method

.method public static synthetic setData$default(Lcom/miui/networkassistant/ui/adapter/CardsAdapter;Ljava/util/List;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->setData(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mEnable:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final enable()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mEnable:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final getCardOnClickListener()Lcom/miui/networkassistant/viewholder/CardOnClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->cardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/CardSData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mActivityCount:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    iget p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mType:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    :goto_1
    return p1
.end method

.method public final getNoPhoneNumListener()Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->noPhoneNumListener:Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;

    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mValid:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 13
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mPolicy:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mDisplay:Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mData:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    if-ne p2, p1, :cond_0

    move v4, v0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mData:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/ui/bean/CardSData;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move-object v6, p1

    iget-object v7, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mPhoneNumber:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mValid:Z

    iget-object v9, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->notice:Ljava/lang/String;

    iget v10, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mColorResId:I

    iget v11, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mDisableColorResId:I

    iget v12, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->bgResId:I

    move v5, p2

    invoke-virtual/range {v1 .. v12}, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;->bindData(ZLjava/lang/String;ZILcom/miui/networkassistant/ui/bean/CardSData;Ljava/lang/String;ZLjava/lang/String;III)V

    :cond_2
    return-void
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

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e00c7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "from(mContext).inflate(R\u2026d_traffic, parent, false)"

    invoke-static {p1, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->cardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->noPhoneNumListener:Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/miui/networkassistant/viewholder/TrafficCardHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/miui/networkassistant/viewholder/CardOnClickListener;Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\u6ca1\u6709\u6307\u5b9aview\u7c7b\u578b"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setActBgId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->actBgResId:I

    return-void
.end method

.method public final setAgree(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mDisplay:Z

    return-void
.end method

.method public final setBgId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->bgResId:I

    return-void
.end method

.method public final setCardOnClickListener(Lcom/miui/networkassistant/viewholder/CardOnClickListener;)V
    .locals 0
    .param p1    # Lcom/miui/networkassistant/viewholder/CardOnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->cardOnClickListener:Lcom/miui/networkassistant/viewholder/CardOnClickListener;

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public final setData(Ljava/util/List;ILjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/CardSData;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mEnable:Z

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mData:Ljava/util/List;

    iput p2, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mActivityCount:I

    iput-object p3, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->notice:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public final setItemColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mColorResId:I

    return-void
.end method

.method public final setItemDisableColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mDisableColorResId:I

    return-void
.end method

.method public final setNoPhoneNumListener(Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;)V
    .locals 0
    .param p1    # Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->noPhoneNumListener:Lcom/miui/networkassistant/viewholder/NoPhoneNumCardOnClickListener;

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "policy"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mPolicy:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mType:I

    return-void
.end method

.method public final setValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/adapter/CardsAdapter;->mValid:Z

    return-void
.end method
