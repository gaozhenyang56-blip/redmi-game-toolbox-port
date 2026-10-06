.class public Lcom/miui/permcenter/autostart/a$g;
.super Lcom/miui/permcenter/autostart/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/autostart/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
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

    invoke-direct {p0, p1}, Lcom/miui/permcenter/autostart/a$b;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b0506

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/permcenter/autostart/a$g;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b0bc9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/autostart/a$g;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0a9f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lcom/miui/permcenter/autostart/a$g;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {p1}, Lpl/c;->c(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/permcenter/autostart/a$g;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public a(Lob/a;)V
    .locals 4

    instance-of v0, p1, Lob/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lob/b;

    iget-object v0, p1, Lob/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/permcenter/autostart/a$g;->a:Landroid/widget/ImageView;

    sget-object v2, Lx4/o0;->f:Lrh/c;

    const v3, 0x7f0804c9

    invoke-static {v0, v1, v2, v3}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a$g;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-boolean v1, p1, Lob/b;->b:Z

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a$g;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lob/b;->c()Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/autostart/a$g;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lob/b;->c()Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lob/b;->c()Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/appmanager/AppManageUtils;->a0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/autostart/a$g;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method
