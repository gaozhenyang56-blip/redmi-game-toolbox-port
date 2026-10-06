.class public Lv7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/b<",
        "Lu7/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv7/b;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e01e6

    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lu7/a;

    invoke-virtual {p0, p1, p2, p3}, Lv7/b;->f(Lq6/i;Lu7/a;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lu7/a;

    invoke-virtual {p0, p1, p2}, Lv7/b;->g(Lu7/a;I)Z

    move-result p1

    return p1
.end method

.method public synthetic e()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lq6/a;->c(Lq6/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public f(Lq6/i;Lu7/a;I)V
    .locals 3

    invoke-virtual {p2}, Lu7/a;->b()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0b0530

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lx4/o0;->f:Lrh/c;

    const v2, 0x7f0804c9

    invoke-static {p3, v0, v1, v2}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    invoke-virtual {p2}, Lu7/a;->c()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0b064e

    invoke-virtual {p1, v0, p3}, Lq6/i;->f(ILjava/lang/String;)Lq6/i;

    invoke-virtual {p2}, Lu7/a;->e()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0b0a93

    invoke-virtual {p1, v0, p3}, Lq6/i;->f(ILjava/lang/String;)Lq6/i;

    invoke-virtual {p2}, Lu7/a;->g()Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0b0d4d

    invoke-virtual {p1, v0, p3}, Lq6/i;->f(ILjava/lang/String;)Lq6/i;

    const p3, 0x7f0b022b

    invoke-virtual {p1, p3}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    instance-of v0, p3, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p2}, Lu7/a;->i()Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p0, Lv7/b;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    invoke-virtual {p1}, Lq6/i;->c()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lv7/b$a;

    invoke-direct {p2, p0, p3}, Lv7/b$a;-><init>(Lv7/b;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public g(Lu7/a;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
