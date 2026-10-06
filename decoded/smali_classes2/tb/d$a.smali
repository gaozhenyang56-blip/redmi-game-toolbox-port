.class public Ltb/d$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltb/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/miui/optimizemanage/view/StateCheckBox;


# direct methods
.method public constructor <init>(Landroid/view/View;Ltb/d$b;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0544

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltb/d$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b07eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltb/d$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0b022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/view/StateCheckBox;

    iput-object v0, p0, Ltb/d$a;->c:Lcom/miui/optimizemanage/view/StateCheckBox;

    new-instance v1, Ltb/d$a$a;

    invoke-direct {v1, p0, p2}, Ltb/d$a$a;-><init>(Ltb/d$a;Ltb/d$b;)V

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/view/StateCheckBox;->setOnStateChangeListener(Lcom/miui/optimizemanage/view/StateCheckBox$b;)V

    new-instance v0, Ltb/c;

    invoke-direct {v0, p0, p2}, Ltb/c;-><init>(Ltb/d$a;Ltb/d$b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Ltb/d$a;Ltb/d$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ltb/d$a;->d(Ltb/d$b;Landroid/view/View;)V

    return-void
.end method

.method private synthetic d(Ltb/d$b;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Ltb/d$b;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Lcom/miui/permcenter/detection/model/RiskAppInfoBean;)V
    .locals 3

    iget-object v0, p1, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mIconUrl:Ljava/lang/String;

    iget-object v1, p0, Ltb/d$a;->a:Landroid/widget/ImageView;

    sget-object v2, Lx4/o0;->f:Lrh/c;

    invoke-static {v0, v1, v2}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v0, p0, Ltb/d$a;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Ltb/d$a;->c(Lcom/miui/permcenter/detection/model/RiskAppInfoBean;)V

    return-void
.end method

.method public c(Lcom/miui/permcenter/detection/model/RiskAppInfoBean;)V
    .locals 1

    iget-object v0, p0, Ltb/d$a;->c:Lcom/miui/optimizemanage/view/StateCheckBox;

    iget-boolean p1, p1, Lcom/miui/permcenter/detection/model/RiskAppInfoBean;->mIsCheck:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/optimizemanage/view/StateCheckBox$c;->c:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/optimizemanage/view/StateCheckBox$c;->a:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/optimizemanage/view/StateCheckBox;->setState(Lcom/miui/optimizemanage/view/StateCheckBox$c;)V

    return-void
.end method
