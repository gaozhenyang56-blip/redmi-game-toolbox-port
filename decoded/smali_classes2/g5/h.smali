.class public Lg5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg5/h$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lg5/h$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg5/h$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lg5/h;->b:Lg5/h$a;

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    instance-of v0, p1, Lcom/miui/dock/edit/a$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/dock/edit/a$b;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lg5/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
