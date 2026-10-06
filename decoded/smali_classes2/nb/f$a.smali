.class Lnb/f$a;
.super Lnb/f$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnb/f;
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
.method public constructor <init>(Landroid/view/View;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lnb/f$d;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0506

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnb/f$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b0bc9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnb/f$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0a9f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lnb/f$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {v0}, Lpl/c;->c(Landroid/view/View;)V

    iget-object v0, p0, Lnb/f$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-eqz p3, :cond_0

    new-instance p2, Lnb/e;

    invoke-direct {p2, p0}, Lnb/e;-><init>(Lnb/f$a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lnb/f$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lnb/f$a;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lnb/f$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1}, Lmiuix/slidingwidget/widget/SlidingButton;->performClick()Z

    return-void
.end method


# virtual methods
.method public a(Lob/f;)V
    .locals 4

    instance-of v0, p1, Lob/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    check-cast p1, Lob/g;

    invoke-virtual {p1}, Lob/g;->c()Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lob/g;->c()Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg_icon://"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnb/f$a;->a:Landroid/widget/ImageView;

    sget-object v3, Lx4/o0;->f:Lrh/c;

    invoke-static {v1, v2, v3}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v1, p0, Lnb/f$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/permcenter/AppPermissionInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lnb/f$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lnb/f$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1}, Lob/g;->b()Z

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :cond_1
    return-void
.end method
