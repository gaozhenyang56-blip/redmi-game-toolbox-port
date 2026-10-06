.class public Lcom/miui/permcenter/privacyblur/a$c;
.super Lcom/miui/permcenter/privacyblur/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/privacyblur/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/miui/permcenter/privacyblur/a$b;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b049f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/a$c;->a:Landroid/widget/TextView;

    const v0, 0x7f0b04a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/privacyblur/a$c;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Lfc/a;)V
    .locals 4

    instance-of v0, p1, Lfc/c;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    check-cast p1, Lfc/c;

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/a$c;->a:Landroid/widget/TextView;

    iget-object v3, p1, Lfc/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lfc/c;->b:Ljava/lang/String;

    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/a$c;->b:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/a$c;->b:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public b(Lfc/a;Z)V
    .locals 3

    instance-of p2, p1, Lfc/c;

    const/16 v0, 0x8

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast p1, Lfc/c;

    iget-object p2, p0, Lcom/miui/permcenter/privacyblur/a$c;->a:Landroid/widget/TextView;

    iget-object v2, p1, Lfc/c;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lfc/c;->b:Ljava/lang/String;

    const-string p2, "-1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/a$c;->b:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/a$c;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
