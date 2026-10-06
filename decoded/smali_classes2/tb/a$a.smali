.class public Ltb/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/permcenter/detection/model/d$a;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$c0;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b08f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltb/a$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b0908

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltb/a$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0906

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltb/a$a;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/permcenter/detection/model/d$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ltb/a$a;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/permcenter/detection/model/d$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p1, Lcom/miui/permcenter/detection/model/d$a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Ltb/a$a;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/permcenter/detection/model/d$a;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltb/a$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060cbb

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/permcenter/detection/model/d$a;->b(I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p1, Lcom/miui/permcenter/detection/model/d$a;->e:I

    if-lez p1, :cond_1

    iget-object v0, p0, Ltb/a$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Ltb/a$a;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ltb/a$a;->a:Landroid/widget/ImageView;

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
