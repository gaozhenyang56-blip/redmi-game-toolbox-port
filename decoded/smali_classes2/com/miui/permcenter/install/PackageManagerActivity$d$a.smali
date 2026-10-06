.class Lcom/miui/permcenter/install/PackageManagerActivity$d$a;
.super Lcom/miui/permcenter/install/PackageManagerActivity$d$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/install/PackageManagerActivity$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Lmiuix/slidingwidget/widget/SlidingButton;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/miui/permcenter/install/PackageManagerActivity$d$d;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0506

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b0bc9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0a9f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance p2, Lcom/miui/permcenter/install/a;

    invoke-direct {p2, p0}, Lcom/miui/permcenter/install/a;-><init>(Lcom/miui/permcenter/install/PackageManagerActivity$d$a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/permcenter/install/PackageManagerActivity$d$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/install/PackageManagerActivity$d$a;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1}, Lmiuix/slidingwidget/widget/SlidingButton;->performClick()Z

    return-void
.end method


# virtual methods
.method public b(Lxb/g;Ljava/io/File;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxb/g;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "file://"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d$a;->a:Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->f:Lrh/c;

    const v2, 0x1080093

    invoke-static {p2, v0, v1, v2}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p2, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lxb/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/miui/permcenter/install/PackageManagerActivity$d$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1}, Lxb/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lxb/g;->a()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method
