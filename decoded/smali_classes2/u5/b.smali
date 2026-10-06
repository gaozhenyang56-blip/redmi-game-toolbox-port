.class public Lu5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e019b

    return v0
.end method

.method public c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p2, 0x7f0b04e1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f120b8b

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public d(Ljava/lang/Object;I)Z
    .locals 0

    instance-of p2, p1, Lcom/miui/gamebooster/model/d;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/miui/gamebooster/model/d;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic e()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lq6/a;->c(Lq6/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
