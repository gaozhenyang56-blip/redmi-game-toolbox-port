.class Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field private itemHeadLayout:Landroid/widget/FrameLayout;

.field private title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;->itemHeadLayout:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    return-object p1
.end method
