.class Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/card/models/FuncGrid6CardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayViewHolder"
.end annotation


# instance fields
.field private data:Lcom/miui/common/card/GridFunctionData;

.field private icon:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

.field private redPointView:Landroid/widget/ImageView;

.field private remoteName:Ljava/lang/String;

.field private remoteSummary:Ljava/lang/String;

.field private smallIconViews:[Landroid/widget/ImageView;

.field private summaryTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;[Landroid/widget/ImageView;Lcom/miui/common/card/GridFunctionData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->icon:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    iput-object p2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->redPointView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->titleTextView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->summaryTextView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->smallIconViews:[Landroid/widget/ImageView;

    invoke-virtual {p6}, Lcom/miui/common/card/GridFunctionData;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->remoteName:Ljava/lang/String;

    invoke-virtual {p6}, Lcom/miui/common/card/GridFunctionData;->getSummary()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->remoteSummary:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->data:Lcom/miui/common/card/GridFunctionData;

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->icon:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->redPointView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->remoteName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->summaryTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/common/card/GridFunctionData;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->data:Lcom/miui/common/card/GridFunctionData;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->remoteSummary:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)[Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->smallIconViews:[Landroid/widget/ImageView;

    return-object p0
.end method
